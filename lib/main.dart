import 'package:flutter/material.dart';
import 'package:telegram_copy/src/App.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/theme/theme.dart';

void main() => runApp(
 ChangeNotifierProvider(
      create: (_) => new ThemeChanger(1),
      child: MyApp(),
    ),
  
  );

