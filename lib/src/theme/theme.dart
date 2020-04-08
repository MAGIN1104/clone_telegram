import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{

  bool _darkTheme = false;
  bool _lightTheme = false;
  ThemeData _currentTheme;

  bool get darkTheme => this._darkTheme;
  bool get lightTheme => this._lightTheme;
  ThemeData get currentTheme => this._currentTheme;

  ThemeChanger(int theme){
    switch(theme){
      case 1:
        _darkTheme=false;
        _lightTheme=false;
        _currentTheme=ThemeData.light().copyWith(
          primaryColor: Color(0xff517DA2),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Color(0xff517DA2) 
          )
        );
      break;
    }
  }

  set darkTheme( bool value){
    _lightTheme=false;
    _darkTheme=value;

    if(value){
        _currentTheme=ThemeData.dark().copyWith(
        primaryColor:  Color(0xff1F2E3E),
        scaffoldBackgroundColor: Color(0xff1F2E3E),
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF000000),
        accentColor: Color(0xff7CBADD),
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.black54,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Color(0xff7CBADD) 
          )
      );
    }
    else{
      _currentTheme=ThemeData.light().copyWith(
        primaryColor: Color(0xff517DA2),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Color(0xff517DA2) 
          )
       );
    }
    notifyListeners();
  }
}