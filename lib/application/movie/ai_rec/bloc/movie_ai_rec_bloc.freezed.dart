// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_ai_rec_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieAiRecEvent {
  WatchMood get mood => throw _privateConstructorUsedError;
  List<MovieGenre> get genres => throw _privateConstructorUsedError;
  List<StreamingService> get streamingServices =>
      throw _privateConstructorUsedError;
  List<Movie> get favoriteMovies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)
        getRecomended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)?
        getRecomended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)?
        getRecomended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecomended value) getRecomended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecomended value)? getRecomended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecomended value)? getRecomended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MovieAiRecEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieAiRecEventCopyWith<MovieAiRecEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieAiRecEventCopyWith<$Res> {
  factory $MovieAiRecEventCopyWith(
          MovieAiRecEvent value, $Res Function(MovieAiRecEvent) then) =
      _$MovieAiRecEventCopyWithImpl<$Res, MovieAiRecEvent>;
  @useResult
  $Res call(
      {WatchMood mood,
      List<MovieGenre> genres,
      List<StreamingService> streamingServices,
      List<Movie> favoriteMovies});
}

/// @nodoc
class _$MovieAiRecEventCopyWithImpl<$Res, $Val extends MovieAiRecEvent>
    implements $MovieAiRecEventCopyWith<$Res> {
  _$MovieAiRecEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieAiRecEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
    Object? genres = null,
    Object? streamingServices = null,
    Object? favoriteMovies = null,
  }) {
    return _then(_value.copyWith(
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as WatchMood,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
      streamingServices: null == streamingServices
          ? _value.streamingServices
          : streamingServices // ignore: cast_nullable_to_non_nullable
              as List<StreamingService>,
      favoriteMovies: null == favoriteMovies
          ? _value.favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecomendedImplCopyWith<$Res>
    implements $MovieAiRecEventCopyWith<$Res> {
  factory _$$GetRecomendedImplCopyWith(
          _$GetRecomendedImpl value, $Res Function(_$GetRecomendedImpl) then) =
      __$$GetRecomendedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WatchMood mood,
      List<MovieGenre> genres,
      List<StreamingService> streamingServices,
      List<Movie> favoriteMovies});
}

/// @nodoc
class __$$GetRecomendedImplCopyWithImpl<$Res>
    extends _$MovieAiRecEventCopyWithImpl<$Res, _$GetRecomendedImpl>
    implements _$$GetRecomendedImplCopyWith<$Res> {
  __$$GetRecomendedImplCopyWithImpl(
      _$GetRecomendedImpl _value, $Res Function(_$GetRecomendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieAiRecEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mood = null,
    Object? genres = null,
    Object? streamingServices = null,
    Object? favoriteMovies = null,
  }) {
    return _then(_$GetRecomendedImpl(
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as WatchMood,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
      streamingServices: null == streamingServices
          ? _value._streamingServices
          : streamingServices // ignore: cast_nullable_to_non_nullable
              as List<StreamingService>,
      favoriteMovies: null == favoriteMovies
          ? _value._favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$GetRecomendedImpl implements _GetRecomended {
  const _$GetRecomendedImpl(
      {required this.mood,
      required final List<MovieGenre> genres,
      required final List<StreamingService> streamingServices,
      required final List<Movie> favoriteMovies})
      : _genres = genres,
        _streamingServices = streamingServices,
        _favoriteMovies = favoriteMovies;

  @override
  final WatchMood mood;
  final List<MovieGenre> _genres;
  @override
  List<MovieGenre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<StreamingService> _streamingServices;
  @override
  List<StreamingService> get streamingServices {
    if (_streamingServices is EqualUnmodifiableListView)
      return _streamingServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streamingServices);
  }

  final List<Movie> _favoriteMovies;
  @override
  List<Movie> get favoriteMovies {
    if (_favoriteMovies is EqualUnmodifiableListView) return _favoriteMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteMovies);
  }

  @override
  String toString() {
    return 'MovieAiRecEvent.getRecomended(mood: $mood, genres: $genres, streamingServices: $streamingServices, favoriteMovies: $favoriteMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecomendedImpl &&
            (identical(other.mood, mood) || other.mood == mood) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._streamingServices, _streamingServices) &&
            const DeepCollectionEquality()
                .equals(other._favoriteMovies, _favoriteMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mood,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_streamingServices),
      const DeepCollectionEquality().hash(_favoriteMovies));

  /// Create a copy of MovieAiRecEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecomendedImplCopyWith<_$GetRecomendedImpl> get copyWith =>
      __$$GetRecomendedImplCopyWithImpl<_$GetRecomendedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)
        getRecomended,
  }) {
    return getRecomended(mood, genres, streamingServices, favoriteMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)?
        getRecomended,
  }) {
    return getRecomended?.call(mood, genres, streamingServices, favoriteMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WatchMood mood,
            List<MovieGenre> genres,
            List<StreamingService> streamingServices,
            List<Movie> favoriteMovies)?
        getRecomended,
    required TResult orElse(),
  }) {
    if (getRecomended != null) {
      return getRecomended(mood, genres, streamingServices, favoriteMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecomended value) getRecomended,
  }) {
    return getRecomended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecomended value)? getRecomended,
  }) {
    return getRecomended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecomended value)? getRecomended,
    required TResult orElse(),
  }) {
    if (getRecomended != null) {
      return getRecomended(this);
    }
    return orElse();
  }
}

abstract class _GetRecomended implements MovieAiRecEvent {
  const factory _GetRecomended(
      {required final WatchMood mood,
      required final List<MovieGenre> genres,
      required final List<StreamingService> streamingServices,
      required final List<Movie> favoriteMovies}) = _$GetRecomendedImpl;

  @override
  WatchMood get mood;
  @override
  List<MovieGenre> get genres;
  @override
  List<StreamingService> get streamingServices;
  @override
  List<Movie> get favoriteMovies;

  /// Create a copy of MovieAiRecEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRecomendedImplCopyWith<_$GetRecomendedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieAiRecState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(Movie movie) succeeded,
    required TResult Function() inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? succeeded,
    TResult? Function()? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(Movie movie)? succeeded,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_InProgress value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_InProgress value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieAiRecStateCopyWith<$Res> {
  factory $MovieAiRecStateCopyWith(
          MovieAiRecState value, $Res Function(MovieAiRecState) then) =
      _$MovieAiRecStateCopyWithImpl<$Res, MovieAiRecState>;
}

/// @nodoc
class _$MovieAiRecStateCopyWithImpl<$Res, $Val extends MovieAiRecState>
    implements $MovieAiRecStateCopyWith<$Res> {
  _$MovieAiRecStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MovieAiRecStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MovieAiRecState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(Movie movie) succeeded,
    required TResult Function() inProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? succeeded,
    TResult? Function()? inProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(Movie movie)? succeeded,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_InProgress value) inProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_InProgress value)? inProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieAiRecState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$MovieAiRecStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'MovieAiRecState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(Movie movie) succeeded,
    required TResult Function() inProgress,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? succeeded,
    TResult? Function()? inProgress,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(Movie movie)? succeeded,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_InProgress value) inProgress,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_InProgress value)? inProgress,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MovieAiRecState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
abstract class _$$SucceededImplCopyWith<$Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl value, $Res Function(_$SucceededImpl) then) =
      __$$SucceededImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<$Res>
    extends _$MovieAiRecStateCopyWithImpl<$Res, _$SucceededImpl>
    implements _$$SucceededImplCopyWith<$Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl _value, $Res Function(_$SucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$SucceededImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$SucceededImpl implements _Succeeded {
  const _$SucceededImpl({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieAiRecState.succeeded(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceededImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      __$$SucceededImplCopyWithImpl<_$SucceededImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(Movie movie) succeeded,
    required TResult Function() inProgress,
  }) {
    return succeeded(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? succeeded,
    TResult? Function()? inProgress,
  }) {
    return succeeded?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(Movie movie)? succeeded,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_InProgress value) inProgress,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_InProgress value)? inProgress,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded implements MovieAiRecState {
  const factory _Succeeded({required final Movie movie}) = _$SucceededImpl;

  Movie get movie;

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$MovieAiRecStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieAiRecState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'MovieAiRecState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(Movie movie) succeeded,
    required TResult Function() inProgress,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? failed,
    TResult? Function(Movie movie)? succeeded,
    TResult? Function()? inProgress,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(Movie movie)? succeeded,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_InProgress value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_InProgress value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements MovieAiRecState {
  const factory _InProgress() = _$InProgressImpl;
}
