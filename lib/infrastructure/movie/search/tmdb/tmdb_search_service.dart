import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:movie_tracker/domain/movie/entities/failures/movie_search_failure.dart';
import 'package:movie_tracker/env/env.dart';

import 'package:movie_tracker/core/typdefs/typdef.dart';

import 'package:movie_tracker/infrastructure/movie/search/tmdb/dto/tmdb_movie_dto.dart';

import 'package:sentry_flutter/sentry_flutter.dart';

@Singleton()
class TmdbSearchService {
  final Dio dio;

  TmdbSearchService({required this.dio});

  final String apiKey = Env.tmdbApiKey;
  final String baseUrl = 'https://api.themoviedb.org/3/search/movie';
  final String videosBaseUrl = 'https://api.themoviedb.org/3/movie/';

  Future<Either<MovieSearchFailure, Movies>> searchByTitle(
    String title, {
    int maxResult = 20,
  }) async {
    try {
      final response = await dio.get(
        '$baseUrl?&api_key=$apiKey&query=$title',
      );

      final List moviesJson = response.data['results'];

      if (moviesJson.isEmpty) {
        return const Right([]);
      }

      final limitedMoviesJson = moviesJson.take(maxResult).toList();

      final movies = await Future.wait(limitedMoviesJson.map((json) async {
        final id = json['id'];

        final trailerLink = await _getTrailerLink(id);

        return TmdbMovieDto.fromJson(json).toEntity(trailerLink: trailerLink);
      }).toList());

      return Right(movies);
    } catch (e, st) {
      if (kDebugMode) {
        Error.throwWithStackTrace(e, st);
      }

      Sentry.captureException(e);

      return Left(MovieSearchUnknownError());
    }
  }

  Future<String?> _getTrailerLink(int movieId) async {
    try {
      final response =
          await dio.get('$videosBaseUrl$movieId/videos?api_key=$apiKey');

      final List videosJson = response.data['results'];

      for (var video in videosJson) {
        if (video['type'] == 'Trailer' && video['site'] == 'YouTube') {
          return 'https://www.youtube.com/watch?v=${video['key']}';
        }
      }

      return null; // No YouTube trailer found
    } catch (e, st) {
      if (kDebugMode) {
        Error.throwWithStackTrace(e, st);
      }

      Sentry.captureException(e, stackTrace: st);

      return null; // Handle failure silently
    }
  }
}
