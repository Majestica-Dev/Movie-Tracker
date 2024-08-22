import 'package:fpdart/fpdart.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/failures/movie_search_failure.dart';

abstract interface class IMovieSearchRepo {
  Future<Either<MovieSearchFailure, Movies>> searchByTitle(String title);
}
