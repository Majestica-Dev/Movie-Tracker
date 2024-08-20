import 'package:fpdart/fpdart.dart';

import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/failures/ai_movie_rec_failure.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

abstract interface class IAiMovieRec {
  Future<Either<AiMovieRecFailure, Movie>> getRecomended({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies movies,
  });
}
