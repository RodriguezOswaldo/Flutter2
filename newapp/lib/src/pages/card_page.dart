import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.amber,
            ),
            title: Text('Let There Be Rock!'),
            subtitle: Text(
                'Bck in nineteen fifty-five, man didn\'t know about a rock \'n\' roll show. The white man had the smoltz. The black man had the blues. No one knew what they were gonna do... This is about to go wild. So, I hope you had breakfast because we are going non-stop!!! '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancel')),
              FlatButton(onPressed: () {}, child: Text('OK')),
            ],
          ),
        ],
      ),
    );
    // Text('Hello World');
  }

  Widget _cardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1597393580483-4f928fc9fca1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(
              milliseconds: 200,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('What\'s Going on!'),
          ),
        ],
      ),
    );
  }
}
