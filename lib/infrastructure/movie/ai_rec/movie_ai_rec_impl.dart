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
import 'package:movie_tracker/infrastructure/movie/ai_rec/manager/movie_ai_rec_pref_manager.dart';
import 'package:movie_tracker/infrastructure/movie/search/tmdb/tmdb_search_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@Singleton(as: IMovieAiRec)
class MovieAiRecImpl implements IMovieAiRec {
  final GptMovieRecImpl _gptMovieRecImpl;
  final TmdbSearchService _tmdbSearchService;
  final MovieAiRecPrefManager _movieAiRecPrefManager;

  MovieAiRecImpl(
    this._gptMovieRecImpl,
    this._tmdbSearchService,
    this._movieAiRecPrefManager,
  );

  @override
  Future<Either<AiMovieRecFailure, Movie>> getRecomended({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies favoriteMovies,
  }) async {
    final gptRecResult = await _gptMovieRecImpl.getRecomendedMovieTitle(
      alreadyRecMoviesTitle: _movieAiRecPrefManager.alreadyAiRecMovies,
      genres: genres,
      mood: mood,
      streamingServices: streamingServices,
      favoriteMovies: favoriteMovies,
    );

    final genreMovies =
        genres.isEmpty ? mood.discoverMovies : genres.first.discoverMovies;

    final Movie randomMovieByGenre =
        genreMovies[Random().nextInt(genreMovies.length)];

    return gptRecResult.fold(
      (l) async {
        await _movieAiRecPrefManager.recordRecMovie(randomMovieByGenre.title);

        return Right(randomMovieByGenre);
      },
      (movieTitle) async {
        final apiSearchResult = await _tmdbSearchService.searchByTitle(
          movieTitle,
          maxResult: 1,
        );

        return apiSearchResult.fold(
          (l) async {
            await _movieAiRecPrefManager
                .recordRecMovie(randomMovieByGenre.title);

            return Right(randomMovieByGenre);
          },
          (r) async {
            if (r.isEmpty) {
              Sentry.captureMessage(
                'Gpt rec is not found from api : $movieTitle',
                level: SentryLevel.error,
              );

              await _movieAiRecPrefManager
                  .recordRecMovie(randomMovieByGenre.title);

              return Right(randomMovieByGenre);
            } else {
              await _movieAiRecPrefManager.recordRecMovie(r.first.title);

              return Right(r.first);
            }
          },
        );
      },
    );
  }
}
