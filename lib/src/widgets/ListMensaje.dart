import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_copy/src/constantes.dart';
import 'package:telegram_copy/src/theme/theme.dart';
class ItemChat extends StatelessWidget {

  ItemChat({@required this.nameContacto, @required this.ultimoMensaje, @required this.hora, this.numMen, this.imagen});
  final Text nameContacto;
  final Text ultimoMensaje;
  final Text hora;
  final String numMen;
  final AssetImage imagen;
  @override
  Widget build(BuildContext context) {
    final apptheme=Provider.of<ThemeChanger>(context).currentTheme;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:imagen,
        radius: 30,
      ),
      title: nameContacto,
      subtitle: ultimoMensaje,
      trailing: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            hora,
            Container(
              padding: EdgeInsets.only(top: 1.0),
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: apptheme.floatingActionButtonTheme.backgroundColor
              ),
              child:
               Center(child: Text(numMen , style:kNumMensaje,))
            )
          ],
        ),
      ),
      onTap: (){},
    );
  }
}