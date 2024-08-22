part of 'movie_search_bloc.dart';

@freezed
class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState.init() = _Init;

  const factory MovieSearchState.inProcess() = _InProcess;

  const factory MovieSearchState.done(
    final List<Movie> movies,
  ) = _Done;

  const factory MovieSearchState.failed() = _Failed;
}
