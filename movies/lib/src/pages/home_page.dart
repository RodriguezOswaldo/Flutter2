import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/card_swiper_widget.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  final moviesProvider = new MoviesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(423, 111, 100, 20),
        appBar: AppBar(
          centerTitle: false,
          title: Text('Movies in Theatre '),
          backgroundColor: Colors.green[800],
          // color: Colors.accents,
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
