import 'package:flutter/material.dart';
import 'package:telegram_copy/src/constantes.dart';
import 'package:telegram_copy/src/widgets/ListMensaje.dart';
import '../widgets/DDrawer.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DDrawer(
        name: Text(
          'Diego',
          style: kTextName,
        ),
        cel: Text(
          '+591 (7)8945612',
          style: kTextCel,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Telegram',
          style: TextStyle(
            fontSize: 18.0
          ),
          
          ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.search),
          )

        ],
      ),
      body: ListView(
        children: <Widget>[
          ItemChat(
            imagen: AssetImage('img/oslo.jpg'),
            nameContacto: Text('Ricardo'),
            ultimoMensaje: Text('Maria: Hola Ric hoy nos vemos en la cena'),
            hora: Text('15:30', style: kTextHora),
            numMen: '2',
          ),
          Divider(),
          ItemChat(
            imagen: AssetImage('img/flutter.png'),
            nameContacto: Text('Flutter'),
            ultimoMensaje: Text('Oso: Sus preguntas...'),
            hora: Text('21:30', style: kTextHora),
            numMen: '20',
          ),
          Divider(),
          ItemChat(
            imagen: AssetImage('img/mcg.jpg'),
            nameContacto: Text('Mamá'),
            ultimoMensaje: Text('Mamá: Hoy vas por el pan Diego'),
            hora: Text('15:30', style: kTextHora),
            numMen: '1',
          ),
          Divider(),
          ItemChat(
            imagen: AssetImage('img/denver.jpg'),
            nameContacto: Text('Nestor'),
            ultimoMensaje: Text('Tú: y que paso despues.. XD'),
            hora: Text('15:30', style: kTextHora),
            numMen: '2'
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: (){},
      ), 
    );
  }
}



