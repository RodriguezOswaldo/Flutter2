import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  // @override
  double _sliderValue = 100.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createImage(),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la Imagen',
      divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://www.syfy.com/sites/syfy/files/styles/1200x680_hero/public/2020/07/batman-death-in-the-family.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
