import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/pages/HomePage.dart';
import 'package:telegram_copy/src/theme/theme.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}