import 'dart:convert';

import 'package:movies/src/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MoviesProvider {
  String _apikey = '4ba518517cf3e809e16e699dcfaf7ce2';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Movie>> getInTeather() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language,
    });
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    // print(decodedData['results']);
    final movies = new Movies.fromJsonList(decodedData['results']);
    print(movies.items[0].title);
    return [];
  }
}
