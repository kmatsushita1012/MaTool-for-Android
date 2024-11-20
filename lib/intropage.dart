import 'package:flutter/material.dart';
import 'package:matool/constants.dart';
import 'package:matool/mydrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'mappage.dart';
import 'tools.dart';

class IntroPage extends StatefulWidget {
  final List<String> towns;
  const IntroPage({super.key, required this.towns});
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  String _currentTown = Constants.defaultTown;
  String _defaultTown = Constants.defaultTown;
  List<String> _towns = [];
  String _description = "";
  String _imageURL = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      _towns = widget.towns;
    });
    _loadDefaultTown();
  }

  Future<void> _loadDefaultTown() async {
    String loadedValue =
        await SharedPreferencesHandler.futureLoadedString('defaultTown') ??
            Constants.defaultTown;
    setState(() {
      _currentTown = loadedValue;
      _defaultTown = loadedValue;
      // 必要な他の初期化処理を実行
      getInfo();
    });
  }

  void getInfo() {
    List<dynamic> parsedJson = [];
    http
        .get(Uri.https(
      Constants.infoURL,
      '/beta',
      {
        'id': _currentTown,
      }, // クエリパラメータを設定
    ))
        .then((response) {
      if (response.statusCode != 200) {
        return;
      }
      dynamic responseBody = utf8.decode(response.bodyBytes);
      parsedJson = jsonDecode(responseBody);
      dynamic jsonInfo = parsedJson[0];
      setState(() {
        _description = jsonInfo['description'];
        _imageURL = jsonInfo['imageURL'];
      });
    });
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
                  itemCount: _towns.length - 1,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_towns[index + 1]),
                      onTap: () {
                        setState(() {
                          _currentTown = _towns[index + 1];
                        });
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double buttonSize = 60;
    double imageSize = MediaQuery.of(context).size.width - 16 * 3 - 50;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, // ハンバーガーアイコンの色を白に設定
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
            ),
          ),
          title: Text(
            '各町紹介',
            style: TextStyle(
              color: Colors.white, // テキストの色を赤に設定
            ),
          ),
          backgroundColor: Constants.themaColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Container(
                width: 160,
                height: buttonSize,
                child: ElevatedButton(
                    onPressed: () {
                      _showPicker(context);
                    },
                    child: Text(
                      '$_currentTown',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
              SizedBox(height: 16.0),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  SizedBox(width: 16.0),
                  Container(
                    width: imageSize,
                    height: imageSize,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.network(
                      _imageURL,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Text('Failed to load image');
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                      width: 50,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    SharedPreferencesHandler.futureSaveString(
                                        'defaultTown', _currentTown);
                                    _showAlertDialog(context, 'お知らせ',
                                        '${_currentTown}をお気に入り登録しました。');
                                    _loadDefaultTown();
                                  },
                                  icon: _currentTown == _defaultTown
                                      ? Icon(Icons.star)
                                      : Icon(Icons.star_border))),
                          SizedBox(height: 16.0),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MapPage(
                                              currentTown: _currentTown,
                                              towns: _towns)),
                                    );
                                  },
                                  icon: Icon(Icons.place))),
                        ],
                      )),
                  SizedBox(width: 16.0),
                ]),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 300, // Containerの幅を指定（折り返しの基準）
                alignment: Alignment.topLeft, // 左詰めに設定
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _description,
                  textAlign: TextAlign.justify, // 左詰め
                  softWrap: true, // 折り返しを許可
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
        endDrawer: MyDrawer(
          towns: _towns,
        ));
  }
}
