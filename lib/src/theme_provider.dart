import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightTheme;

  ThemeProvider({this.isLightTheme});

  ThemeData get getThemeData => isLightTheme ? lightTheme : darkTheme;

  set setThemeData(bool val) {
    if (val) {
      isLightTheme = true;
    } else {
      isLightTheme = false;
    }
    notifyListeners();
  }
}

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor:  Color(0xff1F2E3E),
  scaffoldBackgroundColor: Color(0xff1F2E3E),
  brightness: Brightness.dark,
  backgroundColor: Color(0xFF000000),
  accentColor: Color(0xff7CBADD),
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.black54,
);

final lightTheme = ThemeData(
        primaryColor: Color(0xff517DA2),
        accentColor: Color(0xff517DA2)
);