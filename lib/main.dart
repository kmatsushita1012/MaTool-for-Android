
import 'package:flutter/material.dart';
import 'package:matool/mydrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

import 'mappage.dart';
import 'intropage.dart';
import 'settingspage.dart';
import 'tools.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _towns = ["全て"];
  bool _isLoadingEnded = false;

  @override
  void initState() {
    super.initState();
    _fetchData();

    _setInitValue();
  }

  Future<void> _setInitValue() async {
    String? defaultTown =
        await SharedPreferencesHandler.futureLoadedString('defaultTown');
    if (defaultTown == null) {
      SharedPreferencesHandler.futureSaveString(
          'defaultTown', Constants.defaultTown);
    }
  }

  Future<void> _fetchData() async {
    List<dynamic> parsedJson;
    http
        .get(Uri.https(
      Constants.infoURL,
      '/beta',
      {
        'id': "全て",
      }, // クエリパラメータを設定
    ))
        .then((response) {
      if (response.statusCode == 200) {
        setState(() {
          dynamic responseBody = utf8.decode(response.bodyBytes);
          parsedJson = jsonDecode(responseBody);

          parsedJson.forEach((elem) {
            _towns.add(elem['id'].toString());
          });

          _isLoadingEnded = true;
        });
      } else {
        // エラーハンドリング
        print("error");
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: !_isLoadingEnded
            ? Center(
                child: CircularProgressIndicator()) // データ取得中はローディングインジケーターを表示
            : MyHomePage(towns: _towns), // データ取得後にMyHomePageを表示
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  List<String> towns = [];

  MyHomePage({super.key, required this.towns});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _towns = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _towns = widget.towns;
    });

    print("mylog ${_towns}");
  }

  void _openUrl(String urlString) async {
    final url = Uri.parse(
      urlString,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'このURLにはアクセスできません';
    }
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsPage(
                          towns: _towns,
                        )),
              );
            },
            icon: Icon(
              Icons.settings,
            ),
          ),
          backgroundColor: Constants.themaColor,
          title: Text(
            'MaTool',
            style: TextStyle(
              color: Colors.white, // テキストの色を赤に設定
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MapPage(towns: _towns)),
                  );
                },
                child: Container(
                  width: 334,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(127, 255, 59, 48),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'マップ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '屋台追跡 行動経路',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroPage(
                              towns: _towns,
                            )),
                  );
                },
                child: Container(
                  width: 334,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(127, 255, 59, 48),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                      child: Text(
                    '各町紹介',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
        endDrawer: MyDrawer(
          towns: _towns,
        ));
  }
}
