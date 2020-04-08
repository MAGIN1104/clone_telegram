import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/theme/theme.dart';
import 'MenuItem.dart';
class DDrawer extends StatefulWidget {
  DDrawer ({@required this.name,@required this.cel});
  final Text name;
  final Text cel;
  @override
  _DDrawerState createState() => _DDrawerState();
}

class _DDrawerState extends State<DDrawer> {
  bool sw=false;
  @override
  Widget build(BuildContext context) {
    final apptheme=Provider.of<ThemeChanger>(context);    // la variable con la q cambiaremos los temas
    final cTheme=Provider.of<ThemeChanger>(context).currentTheme;

    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.only(bottom: 0.0),
            decoration: BoxDecoration(
              color: cTheme.primaryColor
              //color: Color(0xff517DA2)
            ),
            child:Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:AssetImage('img/hack.jpg'),
                          radius: 30,
                        ),
                        Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        widget.name,
                        Container(
                          margin: EdgeInsets.only(top: 5),
                        ),
                        widget.cel,
                        ],
                       ),
                      )
                     ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                  // IconButton(icon: Icon(
                  // Icons.brightness_3,
                  // color: Colors.white,
                  //   ),
                  //   onPressed: (){   
                  //     setState(() {
                        
                  //     });
                  //   }            
                  // ),
                  Switch.adaptive(
                  value: apptheme.darkTheme,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    apptheme.darkTheme = value;
                  },
                ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                      onPressed: (){
                        setState(() {
                          sw =! sw;
                        });
                        }            
                    )
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          MenuItem(
            sw: sw,
          )
        ],
      )
    );
  }
}
