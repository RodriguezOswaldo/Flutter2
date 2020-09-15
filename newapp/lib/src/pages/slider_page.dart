import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  double _sliderValue = 100.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[_createSlider()],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        _sliderValue = value;
      },
    );
  }
}
