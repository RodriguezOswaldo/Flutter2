import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/card_swiper_widget.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  final moviesProvider = new MoviesProvider();

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
    return FutureBuilder(
      future: moviesProvider.getInTeather(),
      // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(
            movies: snapshot.data,
          );
        } else {
          return Container(
              height: 500.0, child: Center(child: CircularProgressIndicator()));
        }
        // return;
      },
    );
    // v

    //test line
    // return Container();
  }
}
