part of 'movie_search_bloc.dart';

@freezed
class MovieSearchEvent with _$MovieSearchEvent {
  const factory MovieSearchEvent.search(
    final String query,
  ) = _Search;
}
