import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/failures/movie_search_failure.dart';
import 'package:movie_tracker/env/env.dart';

import 'package:movie_tracker/core/typdefs/typdef.dart';

import 'package:movie_tracker/infrastructure/movie/search/tmdb/dto/tmdb_movie_dto.dart';

@Singleton()
class TmdbSearchService {
  final Dio dio;

  TmdbSearchService({required this.dio});

  final String apiKey = Env.tmdbApiKey;
  final String baseUrl = 'https://api.themoviedb.org/3/search/movie?';

  Future<Either<MovieSearchFailure, Movies>> searchByTitle(title) async {
    try {
      final response = await dio.get(
        '$baseUrl&api_key=$apiKey&query=$title',
      );

      final List moviesJson = response.data['results'];

      final movies = moviesJson
          .map((json) => TmdbMovieDto.fromJson(json).toEntity)
          .toList();

      return Right(movies);
    } catch (e) {
      return Left(MovieSearchUnknownError());
    }
  }
}
