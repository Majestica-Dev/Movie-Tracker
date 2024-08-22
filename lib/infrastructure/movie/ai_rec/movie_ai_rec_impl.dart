import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

import 'package:movie_tracker/domain/movie/entities/failures/ai_movie_rec_failure.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_ai_rec.dart';

import 'package:movie_tracker/infrastructure/movie/ai_rec/gpt_movie_rec_impl.dart';
import 'package:movie_tracker/infrastructure/movie/search/tmdb/tmdb_search_service.dart';

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

    return gptRecResult.fold(
      (l) => Left(AiMovieRecUnknowError()),
      (movieTitle) async {
        final apiSearchResult =
            await _tmdbSearchService.searchByTitle(movieTitle);

        return apiSearchResult.fold((l) => Left(AiMovieRecUnknowError()), (r) {
          return r.isEmpty ? Left(AiMovieRecUnknowError()) : Right(r.first);
        });
      },
    );
  }
}
