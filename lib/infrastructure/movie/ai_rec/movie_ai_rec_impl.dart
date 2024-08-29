import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/movie_genre_x.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/watch_mood_x.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

import 'package:movie_tracker/domain/movie/entities/failures/ai_movie_rec_failure.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_ai_rec.dart';

import 'package:movie_tracker/infrastructure/movie/ai_rec/gpt_movie_rec_impl.dart';
import 'package:movie_tracker/infrastructure/movie/search/tmdb/tmdb_search_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@Singleton(as: IMovieAiRec)
class MovieAiRecImpl implements IMovieAiRec {
  final GptMovieRecImpl _gptMovieRecImpl;
  final TmdbSearchService _tmdbSearchService;

  MovieAiRecImpl(
    this._gptMovieRecImpl,
    this._tmdbSearchService,
  );

  @override
  Future<Either<AiMovieRecFailure, Movie>> getRecomended({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies movies,
  }) async {
    final gptRecResult = await _gptMovieRecImpl.getRecomendedMovieTitle(
      genres: genres,
      mood: mood,
      streamingServices: streamingServices,
      movies: movies,
    );

    final genreMovies =
        genres.isEmpty ? mood.discoverMovies : genres.first.discoverMovies;

    final Movie randomMovieByGenre =
        genreMovies[Random().nextInt(genreMovies.length)];

    return gptRecResult.fold(
      (l) => Right(randomMovieByGenre),
      (movieTitle) async {
        final apiSearchResult =
            await _tmdbSearchService.searchByTitle(movieTitle);

        return apiSearchResult.fold(
          (l) => Right(randomMovieByGenre),
          (r) {
            if (r.isEmpty) {
              Sentry.captureMessage(
                'Gpt rec is not found from api : $movieTitle',
                level: SentryLevel.error,
              );

              return Right(randomMovieByGenre);
            } else {
              return Right(r.first);
            }
          },
        );
      },
    );
  }
}
