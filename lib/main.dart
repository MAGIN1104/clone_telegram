import 'package:flutter/material.dart';
import 'package:telegram_copy/src/App.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/theme_provider.dart';

void main() => runApp(
 ChangeNotifierProvider(
      builder: (_) => ThemeProvider(isLightTheme: true),
      child: MyApp(),
    ),
  
  );

