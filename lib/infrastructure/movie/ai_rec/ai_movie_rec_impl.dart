import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/failures/ai_movie_rec_failure.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_ai_movie_rec.dart';

@Singleton(as: IAiMovieRec)
class AiMovieRecImpl implements IAiMovieRec {
  final OpenAI _openAI;

  AiMovieRecImpl(this._openAI);

  @override
  Future<Either<AiMovieRecFailure, Movie>> getRecomended({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies movies,
  }) async {
    try {
      return Right(
        Movie(
          id: 'id',
          title: '',
          description: null,
          posterImageUrl: null,
          status: WatchStatus.toWatch,
        ),
      );
    } catch (e) {
      // TODO : sentry
      return Left(AiMovieRecUnknowError());
    }
  }
}
