part of 'movie_saver_bloc.dart';

@freezed
class MovieSaverState with _$MovieSaverState {
  const factory MovieSaverState.initial() = _Initial;

  const factory MovieSaverState.inProgress() = _InProgress;

  const factory MovieSaverState.saved() = _Saved;
}
