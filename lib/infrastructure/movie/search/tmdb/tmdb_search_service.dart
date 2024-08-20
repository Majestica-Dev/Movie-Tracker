import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/env/env.dart';

import 'package:movie_tracker/core/typdefs/typdef.dart';

import 'package:movie_tracker/infrastructure/movie/search/tmdb/dto/tmdb_movie_dto.dart';

@Singleton()
class TmdbSearchService {
  final Dio dio;

  TmdbSearchService({required this.dio});

  final String apiKey = Env.tmdbApiKey;
  final String baseUrl = 'https://api.themoviedb.org/3/search/movie?';

  // TODO : Error Handling
  Future<Movies> searchByTitle(title) async {
    final response = await Dio().get(
      '$baseUrl&api_key=$apiKey&query=$title',
    );

    try {
      final List moviesJson = response.data['results'];

      final movies = moviesJson
          .map((json) => TmdbMovieDto.fromJson(json).toEntity)
          .toList();

      return movies;
    } catch (e) {
      return [];
    }
  }
}
