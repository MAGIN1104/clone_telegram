import 'package:flutter/material.dart';
class Items extends StatelessWidget {
  Items({ @required this.text, @required this.icon });
  final Text text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: text,
      onTap: (){},
    );
  }
}