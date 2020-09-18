import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List();
  int _lastItem = 0;
  void initState() {
    super.initState();
    _add10();
    _scrollController.addListener(
      () {
        print('Scroll!!');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Views'),
        backgroundColor: Color.fromRGBO(433, 130, 12, 0.9),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _numberList = [index];
        return FadeInImage(
          image:
              NetworkImage('https://source.unsplash.com/random/500x30$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }
    setState(() {});
  }
}
