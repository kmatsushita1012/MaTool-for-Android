import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:geolocator/geolocator.dart';
import 'package:matool/mydrawer.dart';

import 'tools.dart';
import 'constants.dart';

class MapPage extends StatefulWidget {
  final String? currentTown; // 追加
  final List<String> towns;
  // コンストラクタで currentTown を受け取る
  MapPage({this.currentTown, required this.towns});
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _mapController;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  LatLng? _currentPosition;
  LatLng? _floatCoordinate;

  bool _isAnimationRunning = false;
  double _sliderValue = 0.0;

  late StreamSubscription<Position> positionStream;

  List<String> _towns = [];
  Day currentDay = Day.getCurrentDay();
  Period currentPeriod = Period.getCurrentPeriod();
  String _currentTown = Constants.defaultTown;
  String _defaultTown = Constants.defaultTown;

  String? _floatTown;
  int _currentIndex = 0;
  Timer? _timer;
  LatLng _currentCoordinate = LatLng(0.0, 0.0);

  Icon _currentLocationIcon = Icon(Icons.near_me_outlined);

  bool isEnabled = false;

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high, //正確性:highはAndroid(0-100m),iOS(10m)
    distanceFilter: 100,
  );

  @override
  void initState() {
    super.initState();
    setState(() {
      _towns = widget.towns;
    });
    print("_initializeMap");
    _initializeMap();
    print("getRoute");
    if (widget.currentTown != null) {
      _currentTown = widget.currentTown!;
      getRoute();
    } else {
      _loadDefaultTown();
    }
  }

  Future<void> _loadDefaultTown() async {
    String loadedValue =
        await SharedPreferencesHandler.futureLoadedString('defaultTown') ??
            Constants.defaultTown;
    _defaultTown = loadedValue;
    setState(() {
      _currentTown = loadedValue;
      // 必要な他の初期化処理を実行
      getRoute();
    });
  }

  void _initializeMap() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    print("_initializeMap end");
  }

  void getRoute() {
    List<dynamic> parsedJson = [];
    http
        .get(Uri.https(
      Constants.routeURL,
      '/beta',
      {
        'id': _currentTown,
        'day': currentDay.rawValue.toString(),
        'period': currentPeriod.rawValue.toString(),
      }, // クエリパラメータを設定
    ))
        .then((response) {
      if (response.statusCode == 200) {
        _markers.clear();
        _polylines.clear();

        dynamic responseBody = utf8.decode(response.bodyBytes);
        parsedJson = jsonDecode(responseBody);
        if (_currentTown == "全て") {
          for (var json in parsedJson) {
            Map<String, dynamic> info = json['info'];
            String town = info['id'];
            List<double> colorList = [
              for (var element in json['info']['color']) element.toDouble()
            ];
            List<double> coordinate_list = [
              for (var element in info['coordinate']) element.toDouble()
            ];
            Color color = ColorExtension.fromRGB(
                colorList[0], colorList[1], colorList[2]);
            if (town == _defaultTown) {
              _floatCoordinate = LatLng(coordinate_list[0], coordinate_list[1]);

              drawFloatMarker(
                  town,
                  LatLng(
                      _floatCoordinate!.latitude, _floatCoordinate!.longitude),
                  color);
              _floatTown = town;
            }
          }
        } else {
          dynamic json = parsedJson[0];
          Map<String, dynamic> info = json['info'];
          String town = info['id'];
          List<double> colorList = [
            for (var element in info['color']) element.toDouble()
          ];
          Color color =
              ColorExtension.fromRGB(colorList[0], colorList[1], colorList[2]);
          List<double> coordinate_list = [
            for (var element in info['coordinate']) element.toDouble()
          ];
          _floatCoordinate = LatLng(coordinate_list[0], coordinate_list[1]);
          _floatTown = town;
          drawFloatMarker(
              town,
              LatLng(_floatCoordinate!.latitude, _floatCoordinate!.longitude),
              color);
          if (json['route'] == null) {
            _showAlertDialog(context, "お知らせ", "指定された日程は未登録です");
            isEnabled = false;
            _setFloatLocation();
            return;
          } else {
            List jsonRoute = json['route']['route'];
            drawRoute(jsonRoute, color);
            _moveCameraToPolylineBounds();
          }
        }
        isEnabled = true;
        print("getRoute end");
      } else {
        _showAlertDialog(context, "エラー", "読み込みに失敗しました。しばらく時間をおいて再度お試しください。");
        isEnabled = false;
        throw Exception('Failed to load posts');
      }
    }).catchError((error) {
      _showAlertDialog(
          context, "エラー", "通信に失敗しました。Wi-Fiもしくはモバイルデータ通信の接続をご確認ください。");
      isEnabled = false;
      print('Error fetching data: $error');
    });
    
  }

  void drawFloatMarker(String title, LatLng coordinate, Color color) {
    _createFloatMarkerIcon(color, title).then((customMarkerIcon) {
      setState(() {
        _markers.add(
          Marker(
            markerId: MarkerId(title),
            position: coordinate,
            infoWindow: InfoWindow(
              title: title,
              snippet: '',
            ),
            icon: customMarkerIcon,
            anchor: Offset(0.5, 0.5),
            zIndex: 1,
          ),
        );
      });
    }).catchError((error) {
      print('Error creating custom marker icon: $error');
    });
  }

  void drawTextMarker(
      String title, LatLng coordinate, Color color, String text) {
    _createTextMarkerIcon(color, text).then((customMarkerIcon) {
      setState(() {
        _markers.add(
          Marker(
              markerId: MarkerId(coordinate.toString()),
              position: coordinate,
              infoWindow: InfoWindow(
                title: title,
                snippet: '',
              ),
              icon: customMarkerIcon,
              zIndex: 0),
        );
      });
    }).catchError((error) {
      print('Error creating custom marker icon: $error');
    });
  }

  void drawIconMarker(
      String title, LatLng coordinate, Color color, IconData iconData) {
    _createIconMarkerIcon(color, iconData).then((customMarkerIcon) {
      setState(() {
        _markers.add(
          Marker(
              markerId: MarkerId(coordinate.toString()),
              position: coordinate,
              infoWindow: InfoWindow(
                title: title,
                snippet: '',
              ),
              icon: customMarkerIcon,
              zIndex: 0),
        );
      });
    }).catchError((error) {
      print('Error creating custom marker icon: $error');
    });
  }

  void drawRoute(List<dynamic> json, Color color) {
    if (_isAnimationRunning) {
      _stopAnimation();
    }

    List<LatLng> coordinates = [];
    int counter = 1;
    color = Colors.redAccent;

    json.asMap().forEach((int i, dynamic elem) {
      LatLng coordinate = LatLng(
          elem['coordinate'][0].toDouble(), elem['coordinate'][1].toDouble());
      coordinates.add(coordinate);
      String event = json[i]['event'].toString();

      if (i == 0 && event == 'なし') {
        drawTextMarker('スタート', coordinate, color, 'S');
      } else if (i == json.length - 1 && event == 'なし') {
        drawTextMarker('ゴール', coordinate, color, 'G');
      } else if (event.contains('余興') || event == '順路') {
        drawTextMarker(event, coordinate, color, counter.toString());
        counter++;
      } else if (event == '休憩') {
        drawIconMarker(event, coordinate, color, Icons.watch_later);
      }
    });
    Polyline polyline = Polyline(
      polylineId: PolylineId('$_currentTown'), // 一意のIDを設定
      color: Colors.redAccent, // Polylineの色
      width: 5, // Polylineの幅
      points: coordinates, // Polylineの座標リスト
    );
    setState(() {
      _polylines.add(polyline);
    });
  }

  Future<void> _setCurrentLocation() async {
    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    await _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(currentPosition.latitude, currentPosition.longitude),
            zoom: Constants.zoomLevel),
      ),
    );
    setState(() {
      _currentLocationIcon = Icon(Icons.near_me);
    });
  }

  Future<void> _setFloatLocation() async {
    await _mapController.animateCamera(
      CameraUpdate.newLatLng(_floatCoordinate!),
    );
  }

  void _showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // ダイアログを閉じる
              },
            ),
          ],
        );
      },
    );
  }

  void _startAnimation() {
    if (_polylines.isEmpty) return;

    PolylineId targetId = PolylineId(_currentTown);
    Polyline? polyline = _polylines.firstWhere(
      (polyline) => polyline.polylineId == targetId,
      orElse: () => Polyline(
        polylineId: PolylineId(''), // 空のIDでダミーのPolylineを返す
        points: [],
        color: Colors.transparent,
      ),
    );
    if (_floatTown == null) {
      return;
    }
    _currentIndex = 0;
    _isAnimationRunning = true;
    MarkerId floatTownId = MarkerId(_floatTown!);
    _currentCoordinate = polyline.points[_currentIndex++];
    updateMarkerPosition(floatTownId, _currentCoordinate);

    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (_currentIndex >= polyline.points.length) {
        _stopAnimation();
        return;
      }
      LatLng nextCoordinate = polyline.points[_currentIndex];
      double distance =
          LatLngExtension.distanceBetween(nextCoordinate, _currentCoordinate);
      if (distance >= Constants.replayDistance) {
        double step = Constants.replayDistance / distance;
        double newLat = _currentCoordinate.latitude +
            (nextCoordinate.latitude - _currentCoordinate.latitude) * step;
        double newLng = _currentCoordinate.longitude +
            (nextCoordinate.longitude - _currentCoordinate.longitude) * step;
        _currentCoordinate = LatLng(newLat, newLng);
        updateMarkerPosition(floatTownId, _currentCoordinate);
      } else {
        _currentCoordinate = polyline.points[_currentIndex++];
        updateMarkerPosition(floatTownId, _currentCoordinate);
      }
      setState(() {
        _sliderValue = _currentIndex / polyline.points.length;
      });
    });
  }

  void updateMarkerPosition(MarkerId markerId, LatLng newPosition) {
    if (mounted) {
      Iterable<Marker> markers = _markers.map((marker) {
        if (marker.markerId == markerId) {
          return marker.copyWith(positionParam: newPosition);
        }
        return marker;
      });
      setState(() {
        _markers = markers.toSet();
      });
    }
  }

  void _stopAnimation() {
    _timer?.cancel();
    setState(() {
      _isAnimationRunning = false;
      MarkerId floatTownId = MarkerId(_floatTown!);
      updateMarkerPosition(floatTownId, _floatCoordinate!);
    });
  }

  void _sliderValueChanged() {
    PolylineId targetId = PolylineId(_currentTown);
    Polyline? polyline = _polylines.firstWhere(
      (polyline) => polyline.polylineId == targetId,
      orElse: () => Polyline(
        polylineId: PolylineId(''), // 空のIDでダミーのPolylineを返す
        points: [],
        color: Colors.transparent,
      ),
    );
    MarkerId floatTownId = MarkerId(_floatTown!);
    _currentIndex = (_sliderValue * polyline.points.length).toInt();
    _currentCoordinate = polyline.points[_currentIndex++];
    updateMarkerPosition(floatTownId, _currentCoordinate);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _moveCameraToPolylineBounds() async {
    List<LatLng> polylinePoints = _polylines.first.points;
    if (polylinePoints.isEmpty) return;

    // LatLngBoundsを作成する
    LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(
        polylinePoints
            .map((point) => point.latitude)
            .reduce((a, b) => a < b ? a : b),
        polylinePoints
            .map((point) => point.longitude)
            .reduce((a, b) => a < b ? a : b),
      ),
      northeast: LatLng(
        polylinePoints
            .map((point) => point.latitude)
            .reduce((a, b) => a > b ? a : b),
        polylinePoints
            .map((point) => point.longitude)
            .reduce((a, b) => a > b ? a : b),
      ),
    );

    // カメラの範囲を指定してカメラを移動する
    _mapController.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 50), // 50はカメラの余白を指定しています
    );
  }

  void _updateLocationIcon(LatLng target) {
    if (_currentPosition != null) {
      double distance = Geolocator.distanceBetween(
        _currentPosition!.latitude,
        _currentPosition!.longitude,
        target.latitude,
        target.longitude,
      );

      setState(() {
        if (distance < 100) {
          // 100m以内であれば
          _currentLocationIcon = Icon(Icons.near_me); // `near_me` の `fill` 状態
        } else {
          // 通常の状態
        }
      });
    }
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: Text('Select an item'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _towns.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_towns[index]),
                      onTap: () {
                        setState(() {
                          _currentTown = _towns[index];
                        });
                        getRoute();
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // ハンバーガーアイコンの色を白に設定
        ),
        leading: IconButton(
          onPressed: () {
            if (_isAnimationRunning) {
              _stopAnimation();
            }
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        backgroundColor: Constants.themaColor,
        title: Text(
          'マップ',
          style: TextStyle(
            color: Colors.white, // テキストの色を赤に設定
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: _currentPosition ?? Constants.coordinate,
              zoom: Constants.zoomLevel,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            markers: _markers,
            polylines: _polylines,
            onCameraMoveStarted: () {
              setState(() {
                _currentLocationIcon = Icon(Icons.near_me_outlined);
              });
            },
          ),
          Positioned(
            top: 16.0, // 左上からの位置
            left: 8.0, // 左からの位置
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 左寄せに配置
              children: <Widget>[
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: PopupMenuButton<Day>(
                    onSelected: (value) {
                      currentDay = value;
                      getRoute();
                    },
                    itemBuilder: (BuildContext context) {
                      return Day.values.asMap().entries.map((entry) {
                        final index = entry.key;
                        final item = entry.value;

                        return PopupMenuItem<Day>(
                            value: item,
                            child:
                                Text('${item.text} ${Constants.date[index]}'));
                      }).toList();
                    },
                    child: Center(
                      child: Text(
                        '${currentDay.text}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: PopupMenuButton<Period>(
                    onSelected: (value) {
                      currentPeriod = value;
                      getRoute();
                    },
                    itemBuilder: (BuildContext context) {
                      return Period.values.map((Period item) {
                        return PopupMenuItem<Period>(
                          value: item,
                          child: Text(item.text),
                        );
                      }).toList();
                    },
                    child: Center(
                      child: Text(
                        currentPeriod.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextButton(
                    onPressed: () => _showPicker(context),
                    child: Center(
                      child: Text(
                        _currentTown,
                        textAlign: TextAlign.center, // 文字を中央揃えに設定
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16, // フォントサイズを大きめに設定
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                //現在位置
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _setCurrentLocation();
                      },
                      icon: _currentLocationIcon,
                    )),
                SizedBox(height: 8.0),
                //屋台位置
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: _floatTown != null
                          ? () {
                              _setFloatLocation();
                            }
                          : null,
                      icon: Icon(Icons.place),
                    )),
                SizedBox(height: 8.0),
                //reflesh
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // 背景色を設定
                      shape: BoxShape.circle, // 円形の形状にする場合
                    ),
                    child: IconButton(
                      onPressed: isEnabled
                          ? () {
                              // ボタンが押されたときの処理
                              getRoute();
                            }
                          : null,
                      icon: Icon(Icons.refresh),
                    )),
                SizedBox(height: 8.0),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // 背景色を設定
                      shape: BoxShape.circle, // 円形の形状にする場合
                    ),
                    child: IconButton(
                      onPressed: isEnabled
                          ? () {
                              // ボタンが押されたときの処理
                              if (_isAnimationRunning) {
                                _stopAnimation();
                              } else {
                                _startAnimation();
                              }
                            }
                          : null,
                      icon: Icon(
                        _isAnimationRunning
                            ? Icons.stop
                            : Icons.play_arrow_outlined, // アイコンのサイズを調整
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: Visibility(
              visible: _isAnimationRunning,
              child: Slider(
                value: _sliderValue,
                thumbColor: Constants.themaColor,
                activeColor: Constants.themaColor,
                min: 0.0,
                max: 1.0,
                divisions: 10,
                label: (_sliderValue * 100).toStringAsFixed(0) + '%',
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                    _sliderValueChanged();
                  });
                },
              ),
            ),
          ),
        ],
      ),
      endDrawer: MyDrawer(
        towns: _towns,
      ),
    );
  }
}

Future<BitmapDescriptor> _createFloatMarkerIcon(
    Color color, String text) async {
  final double markerSize = 100.0; // マーカーのサイズ
  final double strokeWidth = 10.0; // マーカーの境界線の幅
  final double textPadding = 20.0; // テキストとマーカーの間のスペース
  final double textStrokeWidth = 6.0; // テキストの白枠の幅
  final double textSize = 40.0; // テキストのサイズ
  final double canvasSize = 200.0; // 全体の高さ幅

  final ui.PictureRecorder recorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(recorder);

  final Paint markerPaint = Paint()..color = color; // マーカーの色用のペイント
  final Paint borderPaint = Paint()
    ..color = Colors.white // 境界線の色用のペイント
    ..style = PaintingStyle.stroke
    ..strokeWidth = strokeWidth; // 境界線の幅の設定

  final double radius = markerSize / 2;

  // マーカーの円を描画
  canvas.drawCircle(
      Offset(canvasSize / 2, canvasSize / 2), radius, markerPaint);
  // マーカーの境界線を描画
  canvas.drawCircle(Offset(canvasSize / 2, canvasSize / 2),
      radius - strokeWidth / 2, borderPaint);

  // テキストの描画
  TextPainter textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontSize: textSize, // テキストのサイズ
        color: Colors.black,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: textStrokeWidth,
            color: Colors.white,
            offset: Offset(0, 0),
          ),
        ],
      ),
    ),
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  );
  textPainter.layout();
  // テキストのY座標を調整してマーカーの下に配置
  double textY = markerSize + textPadding;
  textPainter.paint(
    canvas,
    Offset(
      (canvasSize - textPainter.width) / 2, // テキストのX座標
      canvasSize / 2 + textPadding, // テキストのY座標
    ),
  );

  // CanvasをImageに変換
  final ui.Image markerImage = await recorder
      .endRecording()
      .toImage(canvasSize.toInt(), canvasSize.toInt());

  // ImageをByteDataに変換
  final ByteData? byteData =
      await markerImage.toByteData(format: ui.ImageByteFormat.png);

  // ByteDataをBitmapDescriptorに変換して返す
  return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
}

Future<BitmapDescriptor> _createTextMarkerIcon(Color color, String text) async {
  final double markerWidth = 100.0; // ピンの幅
  final double markerHeight = 150.0; // ピンの高さ
  final double strokeWidth = 5.0; // ピンの枠線の幅
  final double pinTipHeight = 20.0; // ピンの先端の高さ

  // PictureRecorderとCanvasの作成
  final ui.PictureRecorder recorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(recorder);

  // ピンの塗りの色と枠線の色の設定
  final Paint markerPaint = Paint()..color = color; // ピンの塗りの色
  final Paint borderPaint = Paint()
    ..color = Colors.white // 枠線の色
    ..style = PaintingStyle.stroke
    ..strokeWidth = strokeWidth; // 枠線の幅

  // ピンの形状を描画するためのPathを作成
  final Path pinPath = Path()
    ..moveTo(markerWidth / 2, markerHeight) // ピンの底部の中心に移動
    ..lineTo(markerWidth / 2 + pinTipHeight,
        markerHeight - pinTipHeight) // ピンの先端の右側の点
    ..arcToPoint(
      Offset(markerWidth / 2 - pinTipHeight,
          markerHeight - pinTipHeight), // ピンの先端の左側の点
      radius: Radius.circular(markerWidth / 2), // 半径を指定してアークを描画
    )
    ..close(); // パスを閉じる

  // ピンの本体部分を描画
  canvas.drawPath(pinPath, markerPaint); // ピンの塗りの色で描画
  canvas.drawPath(pinPath, borderPaint); // ピンの枠線の色で描画

  // ピンの上部に円を描画するための設定
  final double radius = markerWidth / 2; // 円の半径
  final double circleCenterY = markerHeight - pinTipHeight - radius; // 円の中心Y座標

  // 円の描画
  final Paint circlePaint = Paint()..color = color; // 円の塗りの色
  final Paint circleBorderPaint = Paint()
    ..color = Colors.white // 枠線の色
    ..style = PaintingStyle.stroke
    ..strokeWidth = strokeWidth; // 枠線の幅

  // 円の上部の部分を描画
  canvas.drawCircle(
      Offset(markerWidth / 2, circleCenterY), radius, circlePaint);
  canvas.drawCircle(Offset(markerWidth / 2, circleCenterY),
      radius - strokeWidth / 2, circleBorderPaint); // 枠線の内部部分は描画しない

  // テキストの描画
  TextPainter textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontSize: 64,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  );
  textPainter.layout();
  textPainter.paint(
    canvas,
    Offset(
      markerWidth / 2 - textPainter.width / 2, // テキストのX座標
      circleCenterY - textPainter.height / 2, // テキストのY座標
    ),
  );

  // CanvasをImageに変換
  final img = await recorder
      .endRecording()
      .toImage(markerWidth.toInt(), markerHeight.toInt()); // 画像サイズを指定してImageを生成
  final data =
      await img.toByteData(format: ui.ImageByteFormat.png); // PNG形式でデータを取得
  return BitmapDescriptor.fromBytes(
      data!.buffer.asUint8List()); // バイトデータからBitmapDescriptorを作成
}

Future<BitmapDescriptor> _createIconMarkerIcon(
    Color color, IconData iconData) async {
  final int width = 100;
  final int height = 100;

  final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(pictureRecorder);
  final Paint paint = Paint()..color = color;

  // Draw default marker shape
  final double radius = width / 2.0;
  canvas.drawCircle(
    Offset(radius, radius),
    radius,
    paint,
  );

  // Draw the Flutter icon in the center
  final TextPainter textPainter = TextPainter(textDirection: TextDirection.ltr);
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 64.0,
    fontFamily: iconData.fontFamily,
  );
  textPainter.text = TextSpan(
    text: String.fromCharCode(iconData.codePoint),
    style: textStyle,
  );
  textPainter.layout();
  textPainter.paint(
    canvas,
    Offset(
      radius - textPainter.width / 2.0,
      radius - textPainter.height / 2.0,
    ),
  );

  final ui.Image markerAsImage =
      await pictureRecorder.endRecording().toImage(width, height);
  final ByteData? byteData =
      await markerAsImage.toByteData(format: ui.ImageByteFormat.png);
  final Uint8List uint8List = byteData!.buffer.asUint8List();

  return BitmapDescriptor.fromBytes(uint8List);
}
