import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';
import 'dart:async';

extension ColorExtension on Color {
  /// Create a color from RGB values in the range of 0.0 to 1.0.
  static Color fromRGB(double red, double green, double blue,
      {double opacity = 1.0}) {
    assert(red >= 0.0 && red <= 1.0);
    assert(green >= 0.0 && green <= 1.0);
    assert(blue >= 0.0 && blue <= 1.0);
    assert(opacity >= 0.0 && opacity <= 1.0);

    return Color.fromRGBO(
      (red * 255).round(),
      (green * 255).round(),
      (blue * 255).round(),
      opacity,
    );
  }
}

enum Day {
  friday(0), // 金曜日
  saturday(1), // 土曜日
  sunday(2), // 日曜日
  monday(3), // 月曜日
  ;

  final int rawValue;

  const Day(this.rawValue);

  String get text {
    switch (this) {
      case Day.friday:
        return '金曜日';
      case Day.saturday:
        return '土曜日';
      case Day.sunday:
        return '日曜日';
      case Day.monday:
        return '月曜日';
    }
  }

  static Day getCurrentDay() {
    DateTime now = DateTime.now();
    int weekday = now.weekday; // 1 = Monday, 7 = Sunday

    switch (weekday) {
      case 5: // 金曜日
        return Day.friday;
      case 6: // 土曜日
        return Day.saturday;
      case 7: // 日曜日
        return Day.sunday;
      case 1: // 月曜日
        return Day.monday;
      default:
        return Day.friday; // 金曜から月曜以外の曜日の場合は金曜日を返す
    }
  }

  static Day fromRawValue(int rawValue) {
    return Day.values.firstWhere((day) => day.rawValue == rawValue,
        orElse: () => Day.friday);
  }
}

enum Period {
  morning(0), // 午前
  afternoon(1), // 午後
  night(2), // 夜
  ;

  final int rawValue;

  const Period(this.rawValue);

  String get text {
    switch (this) {
      case Period.morning:
        return '午前';
      case Period.afternoon:
        return '午後';
      case Period.night:
        return '夜';
    }
  }

  static Period getCurrentPeriod() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 6 && hour < 12) {
      return Period.morning;
    } else if (hour >= 12 && hour < 17) {
      return Period.afternoon;
    } else {
      return Period.night;
    }
  }

  // rawValueからPeriodを取得するための静的メソッド
  static Period fromRawValue(int rawValue) {
    return Period.values.firstWhere((period) => period.rawValue == rawValue,
        orElse: () => Period.morning);
  }
}

class DataProvider extends InheritedWidget {
  final List<dynamic> data;
  final Widget child;

  DataProvider({required this.data, required this.child}) : super(child: child);

  static DataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DataProvider>();
  }

  @override
  bool updateShouldNotify(DataProvider oldWidget) {
    return data != oldWidget.data;
  }
}

class SharedPreferencesHandler {
  static Future<String?> futureLoadedString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // 保存した値がなければゼロ
    return prefs.getString(key);
  }
  static Future<void> futureSaveString(String key,String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // 保存した値がなければゼロ
    prefs.setString(key, value);
  }
}


extension LatLngExtension on LatLng {
  static double distanceBetween(LatLng coor1, LatLng coor2) {
    final lat1 = coor1.latitude;
    final lng1 = coor1.longitude;
    final lat2 = coor2.latitude;
    final lng2 = coor2.longitude;

    final dLat = (lat2 - lat1) * (pi / 180.0);
    final dLng = (lng2 - lng1) * (pi / 180.0);

    final a = pow(sin(dLat / 2), 2) +
        cos(lat1 * (pi / 180.0)) *
            cos(lat2 * (pi / 180.0)) *
            pow(sin(dLng / 2), 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    final distance = 6371000 * c; // 地球の半径 (メートル)
    return distance;
  }
}
