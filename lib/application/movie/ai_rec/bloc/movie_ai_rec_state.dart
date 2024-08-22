part of 'movie_ai_rec_bloc.dart';

@freezed
class MovieAiRecState with _$MovieAiRecState {
  const factory MovieAiRecState.initial() = _Initial;

  const factory MovieAiRecState.failed() = _Failed;

  const factory MovieAiRecState.succeeded({required Movie movie}) = _Succeeded;

  const factory MovieAiRecState.inProgress() = _InProgress;
}
