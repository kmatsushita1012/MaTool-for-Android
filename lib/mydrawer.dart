
import 'package:flutter/material.dart';
import 'package:matool/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import 'package:matool/main.dart';
import 'mappage.dart';
import 'intropage.dart';
import 'settingspage.dart';
import 'tools.dart';

class MyDrawer extends StatefulWidget {
  final List<String> towns;

  MyDrawer({required this.towns});
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<String> _towns = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      _towns = widget.towns;
    });
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
    return Drawer(
      // ドロワーの内容を設定
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Constants.themaColor,
            ),
            child: Text(
              'MaTool',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('ホーム'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          towns: _towns,
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('マップ'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MapPage(
                          towns: _towns,
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('各町紹介'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => IntroPage(
                          towns: _towns,
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('設定'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsPage(
                          towns: _towns,
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_outlined),
            title: Text('使い方'),
            onTap: () => _openUrl(Constants.userguideURL),
          ),
          ListTile(
              leading: Icon(Icons.question_answer_rounded),
              title: Text('お問い合わせ'),
              onTap: () => _openUrl(Constants.formURL)),
        ],
      ),
    );
  }
}
