import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearLista(),
        // children: _createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Anything'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list
        ..add(tempWidget)
        ..add(Divider(
          height: 5.0,
          color: Colors.blueAccent,
          thickness: 1.5,
        ));
    }
    return list;
  }

  List<Widget> _crearLista() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Anything'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
            hoverColor: Colors.greenAccent,
            focusColor: Colors.amber,
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
