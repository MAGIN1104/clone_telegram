import 'package:flutter/material.dart';
import 'package:telegram_copy/src/constantes.dart';
import 'Item.dart';
class MenuItem extends StatefulWidget { 
  MenuItem({@required this.sw});
  final bool sw;
  static Color c1=Colors.grey;

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
            height: widget.sw ? 150 : 0,
            duration: Duration(milliseconds: 500),
            child: ListView(
                children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('img/hack.jpg'),
              ),
              title: Text('Diego'),
            ),
            Items(
              text: Text('Añadir cuenta', style: kTextItem), 
              icon: Icon(Icons.add, color:MenuItem.c1)),
            Divider()
                ],
              ),
          ),
            Items(
              text: Text('Nuevo Grupo', style: kTextItem),
              icon: Icon(Icons.people_outline, color: MenuItem.c1),
            ),
            Items(
              text: Text('Nuevo chat secreto', style: kTextItem), 
              icon: Icon(Icons.lock_outline, color:MenuItem.c1)),
            Items(
              text: Text('Nuevo canal', style: kTextItem,), 
              icon: Icon(Icons.voice_chat, color:MenuItem.c1)),
            Items(
              text: Text('Contactos', style: kTextItem), 
              icon: Icon(Icons.perm_identity, color:MenuItem.c1)),
            Items(
              text: Text('Llamadas', style: kTextItem), 
              icon: Icon(Icons.phone, color:MenuItem.c1)),
            Items(
              text: Text('Mensajes Guardados', style: kTextItem), 
              icon: Icon(Icons.bookmark_border, color:MenuItem.c1)),
            Items(
              text: Text('Ajustes', style: kTextItem), 
              icon: Icon(Icons.settings, color:MenuItem.c1)),
            Divider(),
            Items(
              text: Text('Invitar Amigos', style: kTextItem), 
              icon: Icon(Icons.person_add, color:MenuItem.c1)),
            Items(
              text: Text('Preguntas Frecuentes', style: kTextItem), 
              icon: Icon(Icons.help_outline, color:MenuItem.c1)),
          ],
        ),
      ),
    );
  }
}

