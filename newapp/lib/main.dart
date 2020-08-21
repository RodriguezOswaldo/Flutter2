import 'package:flutter/material.dart';

import 'package:newapp/src/pages/home_page.dart';
// import 'package:other_app/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      home: HomePage(),
    );
  }
}
