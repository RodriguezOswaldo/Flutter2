import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Views'),
        backgroundColor: Color.fromRGBO(433, 130, 12, 0.9),
      ),
      body: Text('Listas....'),
    );
  }
}
