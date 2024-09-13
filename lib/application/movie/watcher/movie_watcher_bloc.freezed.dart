// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)
        succeeded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatcherStateCopyWith<$Res> {
  factory $MovieWatcherStateCopyWith(
          MovieWatcherState value, $Res Function(MovieWatcherState) then) =
      _$MovieWatcherStateCopyWithImpl<$Res, MovieWatcherState>;
}

/// @nodoc
class _$MovieWatcherStateCopyWithImpl<$Res, $Val extends MovieWatcherState>
    implements $MovieWatcherStateCopyWith<$Res> {
  _$MovieWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'MovieWatcherState.inProgress()';
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
    required TResult Function() inProgress,
    required TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)
        succeeded,
    required TResult Function(String message) failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult? Function(String message)? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult Function(String message)? failed,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_Failed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_Failed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements MovieWatcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$SucceededImplCopyWith<$Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl value, $Res Function(_$SucceededImpl) then) =
      __$$SucceededImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Movie> allMovies,
      List<Movie> favoriteMovies,
      Map<WatchStatus, List<Movie>> moviesMap});
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res, _$SucceededImpl>
    implements _$$SucceededImplCopyWith<$Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl _value, $Res Function(_$SucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMovies = null,
    Object? favoriteMovies = null,
    Object? moviesMap = null,
  }) {
    return _then(_$SucceededImpl(
      allMovies: null == allMovies
          ? _value._allMovies
          : allMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      favoriteMovies: null == favoriteMovies
          ? _value._favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviesMap: null == moviesMap
          ? _value._moviesMap
          : moviesMap // ignore: cast_nullable_to_non_nullable
              as Map<WatchStatus, List<Movie>>,
    ));
  }
}

/// @nodoc

class _$SucceededImpl implements _Succeeded {
  const _$SucceededImpl(
      {required final List<Movie> allMovies,
      required final List<Movie> favoriteMovies,
      required final Map<WatchStatus, List<Movie>> moviesMap})
      : _allMovies = allMovies,
        _favoriteMovies = favoriteMovies,
        _moviesMap = moviesMap;

  final List<Movie> _allMovies;
  @override
  List<Movie> get allMovies {
    if (_allMovies is EqualUnmodifiableListView) return _allMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMovies);
  }

  final List<Movie> _favoriteMovies;
  @override
  List<Movie> get favoriteMovies {
    if (_favoriteMovies is EqualUnmodifiableListView) return _favoriteMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteMovies);
  }

  final Map<WatchStatus, List<Movie>> _moviesMap;
  @override
  Map<WatchStatus, List<Movie>> get moviesMap {
    if (_moviesMap is EqualUnmodifiableMapView) return _moviesMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_moviesMap);
  }

  @override
  String toString() {
    return 'MovieWatcherState.succeeded(allMovies: $allMovies, favoriteMovies: $favoriteMovies, moviesMap: $moviesMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceededImpl &&
            const DeepCollectionEquality()
                .equals(other._allMovies, _allMovies) &&
            const DeepCollectionEquality()
                .equals(other._favoriteMovies, _favoriteMovies) &&
            const DeepCollectionEquality()
                .equals(other._moviesMap, _moviesMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allMovies),
      const DeepCollectionEquality().hash(_favoriteMovies),
      const DeepCollectionEquality().hash(_moviesMap));

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      __$$SucceededImplCopyWithImpl<_$SucceededImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)
        succeeded,
    required TResult Function(String message) failed,
  }) {
    return succeeded(allMovies, favoriteMovies, moviesMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult? Function(String message)? failed,
  }) {
    return succeeded?.call(allMovies, favoriteMovies, moviesMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(allMovies, favoriteMovies, moviesMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_Failed value) failed,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_Failed value)? failed,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded implements MovieWatcherState {
  const factory _Succeeded(
          {required final List<Movie> allMovies,
          required final List<Movie> favoriteMovies,
          required final Map<WatchStatus, List<Movie>> moviesMap}) =
      _$SucceededImpl;

  List<Movie> get allMovies;
  List<Movie> get favoriteMovies;
  Map<WatchStatus, List<Movie>> get moviesMap;

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MovieWatcherState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)
        succeeded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(List<Movie> allMovies, List<Movie> favoriteMovies,
            Map<WatchStatus, List<Movie>> moviesMap)?
        succeeded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MovieWatcherState {
  const factory _Failed({required final String message}) = _$FailedImpl;

  String get message;

  /// Create a copy of MovieWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap, List<Movie> favoriteMovies)
        handleSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_HandleSucceeded value) handleSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_HandleSucceeded value)? handleSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_HandleSucceeded value)? handleSucceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatcherEventCopyWith<$Res> {
  factory $MovieWatcherEventCopyWith(
          MovieWatcherEvent value, $Res Function(MovieWatcherEvent) then) =
      _$MovieWatcherEventCopyWithImpl<$Res, MovieWatcherEvent>;
}

/// @nodoc
class _$MovieWatcherEventCopyWithImpl<$Res, $Val extends MovieWatcherEvent>
    implements $MovieWatcherEventCopyWith<$Res> {
  _$MovieWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MovieWatcherEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'MovieWatcherEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap, List<Movie> favoriteMovies)
        handleSucceeded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_HandleSucceeded value) handleSucceeded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_HandleSucceeded value)? handleSucceeded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_HandleSucceeded value)? handleSucceeded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MovieWatcherEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$HandleSucceededImplCopyWith<$Res> {
  factory _$$HandleSucceededImplCopyWith(_$HandleSucceededImpl value,
          $Res Function(_$HandleSucceededImpl) then) =
      __$$HandleSucceededImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Movie> allMovies,
      Map<WatchStatus, List<Movie>> moviesMap,
      List<Movie> favoriteMovies});
}

/// @nodoc
class __$$HandleSucceededImplCopyWithImpl<$Res>
    extends _$MovieWatcherEventCopyWithImpl<$Res, _$HandleSucceededImpl>
    implements _$$HandleSucceededImplCopyWith<$Res> {
  __$$HandleSucceededImplCopyWithImpl(
      _$HandleSucceededImpl _value, $Res Function(_$HandleSucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMovies = null,
    Object? moviesMap = null,
    Object? favoriteMovies = null,
  }) {
    return _then(_$HandleSucceededImpl(
      allMovies: null == allMovies
          ? _value._allMovies
          : allMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviesMap: null == moviesMap
          ? _value._moviesMap
          : moviesMap // ignore: cast_nullable_to_non_nullable
              as Map<WatchStatus, List<Movie>>,
      favoriteMovies: null == favoriteMovies
          ? _value._favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$HandleSucceededImpl implements _HandleSucceeded {
  const _$HandleSucceededImpl(
      {required final List<Movie> allMovies,
      required final Map<WatchStatus, List<Movie>> moviesMap,
      required final List<Movie> favoriteMovies})
      : _allMovies = allMovies,
        _moviesMap = moviesMap,
        _favoriteMovies = favoriteMovies;

  final List<Movie> _allMovies;
  @override
  List<Movie> get allMovies {
    if (_allMovies is EqualUnmodifiableListView) return _allMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMovies);
  }

  final Map<WatchStatus, List<Movie>> _moviesMap;
  @override
  Map<WatchStatus, List<Movie>> get moviesMap {
    if (_moviesMap is EqualUnmodifiableMapView) return _moviesMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_moviesMap);
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
    return 'MovieWatcherEvent.handleSucceeded(allMovies: $allMovies, moviesMap: $moviesMap, favoriteMovies: $favoriteMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleSucceededImpl &&
            const DeepCollectionEquality()
                .equals(other._allMovies, _allMovies) &&
            const DeepCollectionEquality()
                .equals(other._moviesMap, _moviesMap) &&
            const DeepCollectionEquality()
                .equals(other._favoriteMovies, _favoriteMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allMovies),
      const DeepCollectionEquality().hash(_moviesMap),
      const DeepCollectionEquality().hash(_favoriteMovies));

  /// Create a copy of MovieWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleSucceededImplCopyWith<_$HandleSucceededImpl> get copyWith =>
      __$$HandleSucceededImplCopyWithImpl<_$HandleSucceededImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap, List<Movie> favoriteMovies)
        handleSucceeded,
  }) {
    return handleSucceeded(allMovies, moviesMap, favoriteMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
  }) {
    return handleSucceeded?.call(allMovies, moviesMap, favoriteMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<Movie> allMovies,
            Map<WatchStatus, List<Movie>> moviesMap,
            List<Movie> favoriteMovies)?
        handleSucceeded,
    required TResult orElse(),
  }) {
    if (handleSucceeded != null) {
      return handleSucceeded(allMovies, moviesMap, favoriteMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_HandleSucceeded value) handleSucceeded,
  }) {
    return handleSucceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_HandleSucceeded value)? handleSucceeded,
  }) {
    return handleSucceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_HandleSucceeded value)? handleSucceeded,
    required TResult orElse(),
  }) {
    if (handleSucceeded != null) {
      return handleSucceeded(this);
    }
    return orElse();
  }
}

abstract class _HandleSucceeded implements MovieWatcherEvent {
  const factory _HandleSucceeded(
      {required final List<Movie> allMovies,
      required final Map<WatchStatus, List<Movie>> moviesMap,
      required final List<Movie> favoriteMovies}) = _$HandleSucceededImpl;

  List<Movie> get allMovies;
  Map<WatchStatus, List<Movie>> get moviesMap;
  List<Movie> get favoriteMovies;

  /// Create a copy of MovieWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandleSucceededImplCopyWith<_$HandleSucceededImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
