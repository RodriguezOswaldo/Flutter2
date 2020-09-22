import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Movies in Teathre '),
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              _swiperCard(),
            ],
          ),
        ));
  }

  Widget _swiperCard() {
    return Swiper(
      itemBuilder: (BuildContext context, int Index) {
        return new Image.network("http://via.placeholder.com/350x150",
            fit: BoxFit.fill);
      },
      itemCount: 3,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
    );
  }
}
