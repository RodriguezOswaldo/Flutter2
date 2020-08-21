import 'package:flutter/material.dart';
import 'package:newapp/src/pages/alert_page.dart';
import 'package:newapp/src/pages/avatar_page.dart';

import 'package:newapp/src/pages/home_page.dart';
// import 'package:other_app/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        // 'alert'
      },
    );
  }
}
