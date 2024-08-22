import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/failures/movie_search_failure.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_search_repo.dart';

import 'package:movie_tracker/infrastructure/movie/search/tmdb/tmdb_search_service.dart';

@Singleton(as: IMovieSearchRepo)
class MovieSearchRepoImpl implements IMovieSearchRepo {
  final TmdbSearchService _tmdbSearchService;

  MovieSearchRepoImpl(this._tmdbSearchService);

  @override
  Future<Either<MovieSearchFailure, Movies>> searchByTitle(String title) {
    return _tmdbSearchService.searchByTitle(title);
  }
}
