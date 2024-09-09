part of 'movie_saver_bloc.dart';

@freezed
class MovieSaverEvent with _$MovieSaverEvent {
  const factory MovieSaverEvent.save({
    required Movie movie,
  }) = _Save;

  const factory MovieSaverEvent.saveAll({
    required Movies movies,
  }) = _SaveAll;
}
