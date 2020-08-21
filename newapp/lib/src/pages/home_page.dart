import 'package:flutter/material.dart';
import 'package:newapp/src/providers/menu_providers.dart';
import 'package:newapp/src/utils/icono_string_util.dart';

import 'alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.options);
    // menuProvider.loadData().then((options)
    return FutureBuilder(
      future: menuProvider.loadData(),
      // initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print();
        return ListView(
          children: _itemLists(snapshot.data, context),
        );
      },
    );
  }
}

List<Widget> _itemLists(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
      onTap: () {
        final route = MaterialPageRoute(builder: (context) {
          return AlertPage();
        });
        Navigator.push(context, route);
      },
    );
    opciones..add(widgetTemp)..add(Divider());
  });
  return opciones;
}
