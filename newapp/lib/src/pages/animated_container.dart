import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: Color.fromRGBO(323, 50, 223, 0.3),
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        height: _height,
        decoration:
            BoxDecoration(borderRadius: _borderRadiusGeometry, color: _color),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeShape,
      ),
    );
  }

  void _changeShape() {
    final random = Random();
    setState(() {});
    _width += random.nextInt(100).toDouble();
    _height += random.nextInt(100).toDouble();
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble());
  }
}
