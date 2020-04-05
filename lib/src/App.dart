import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/pages/HomePage.dart';
import 'package:telegram_copy/src/theme_provider.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme:themeProvider.getThemeData, 
      // ThemeData.light().copyWith(
      //   primaryColor: Color(0xff517DA2),
      //   accentColor: Color(0xff517DA2)
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}