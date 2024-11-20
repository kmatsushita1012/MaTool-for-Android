import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:matool/constants.dart';
import 'package:matool/mydrawer.dart';

import 'mappage.dart';
import 'intropage.dart';
import 'settingspage.dart';
import 'tools.dart';

class SettingsPage extends StatefulWidget {
  List<String> towns = [];
  SettingsPage({required this.towns});
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<String> _towns = [];
  String _selectedTown = Constants.defaultTown;
  @override
  void initState() {
    super.initState();
    _towns = widget.towns;
    _towns.remove("全て");
  }

  Future<void> _loadDefaultTown() async {
    String loadedValue =
        await SharedPreferencesHandler.futureLoadedString('defaultTown') ??
            Constants.defaultTown;
    setState(() {
      _selectedTown = loadedValue;
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
                  itemCount: _towns.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_towns[index]),
                      onTap: () {
                        SharedPreferencesHandler.futureSaveString(
                            'defaultTown', _towns[index]);
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.themaColor,
        iconTheme: IconThemeData(
          color: Colors.white, // ハンバーガーアイコンの色を白に設定
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        title: Text(
          '設定',
          style: TextStyle(
            color: Colors.white, // テキストの色を赤に設定
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  _showPicker(context);
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 100,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'マイ屋台',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _selectedTown,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: MyDrawer(towns: _towns),
    );
  }
}
