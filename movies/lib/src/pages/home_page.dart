import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/card_swiper_widget.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

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
    final moviesProvider = new MoviesProvider();
    moviesProvider.getInTeather();
    return CardSwiper(
      movies: [1, 2, 3, 4, 5],
    );
    //test line
    // return Container();
  }
}
