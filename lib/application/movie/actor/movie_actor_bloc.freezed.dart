// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) updateStatus,
    required TResult Function(Movie movie) updateIsFavorite,
    required TResult Function(String id) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? updateStatus,
    TResult? Function(Movie movie)? updateIsFavorite,
    TResult? Function(String id)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? updateStatus,
    TResult Function(Movie movie)? updateIsFavorite,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdateIsFavorite value) updateIsFavorite,
    required TResult Function(_Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult? Function(_Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieActorEventCopyWith<$Res> {
  factory $MovieActorEventCopyWith(
          MovieActorEvent value, $Res Function(MovieActorEvent) then) =
      _$MovieActorEventCopyWithImpl<$Res, MovieActorEvent>;
}

/// @nodoc
class _$MovieActorEventCopyWithImpl<$Res, $Val extends MovieActorEvent>
    implements $MovieActorEventCopyWith<$Res> {
  _$MovieActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$UpdateStatusImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$UpdateStatusImpl implements _UpdateStatus {
  const _$UpdateStatusImpl({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieActorEvent.updateStatus(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) updateStatus,
    required TResult Function(Movie movie) updateIsFavorite,
    required TResult Function(String id) remove,
  }) {
    return updateStatus(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? updateStatus,
    TResult? Function(Movie movie)? updateIsFavorite,
    TResult? Function(String id)? remove,
  }) {
    return updateStatus?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? updateStatus,
    TResult Function(Movie movie)? updateIsFavorite,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdateIsFavorite value) updateIsFavorite,
    required TResult Function(_Remove value) remove,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult? Function(_Remove value)? remove,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus implements MovieActorEvent {
  const factory _UpdateStatus({required final Movie movie}) =
      _$UpdateStatusImpl;

  Movie get movie;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIsFavoriteImplCopyWith<$Res> {
  factory _$$UpdateIsFavoriteImplCopyWith(_$UpdateIsFavoriteImpl value,
          $Res Function(_$UpdateIsFavoriteImpl) then) =
      __$$UpdateIsFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});
}

/// @nodoc
class __$$UpdateIsFavoriteImplCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res, _$UpdateIsFavoriteImpl>
    implements _$$UpdateIsFavoriteImplCopyWith<$Res> {
  __$$UpdateIsFavoriteImplCopyWithImpl(_$UpdateIsFavoriteImpl _value,
      $Res Function(_$UpdateIsFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$UpdateIsFavoriteImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$UpdateIsFavoriteImpl implements _UpdateIsFavorite {
  const _$UpdateIsFavoriteImpl({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieActorEvent.updateIsFavorite(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIsFavoriteImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIsFavoriteImplCopyWith<_$UpdateIsFavoriteImpl> get copyWith =>
      __$$UpdateIsFavoriteImplCopyWithImpl<_$UpdateIsFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) updateStatus,
    required TResult Function(Movie movie) updateIsFavorite,
    required TResult Function(String id) remove,
  }) {
    return updateIsFavorite(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? updateStatus,
    TResult? Function(Movie movie)? updateIsFavorite,
    TResult? Function(String id)? remove,
  }) {
    return updateIsFavorite?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? updateStatus,
    TResult Function(Movie movie)? updateIsFavorite,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) {
    if (updateIsFavorite != null) {
      return updateIsFavorite(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdateIsFavorite value) updateIsFavorite,
    required TResult Function(_Remove value) remove,
  }) {
    return updateIsFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult? Function(_Remove value)? remove,
  }) {
    return updateIsFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (updateIsFavorite != null) {
      return updateIsFavorite(this);
    }
    return orElse();
  }
}

abstract class _UpdateIsFavorite implements MovieActorEvent {
  const factory _UpdateIsFavorite({required final Movie movie}) =
      _$UpdateIsFavoriteImpl;

  Movie get movie;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateIsFavoriteImplCopyWith<_$UpdateIsFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'MovieActorEvent.remove(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) updateStatus,
    required TResult Function(Movie movie) updateIsFavorite,
    required TResult Function(String id) remove,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? updateStatus,
    TResult? Function(Movie movie)? updateIsFavorite,
    TResult? Function(String id)? remove,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? updateStatus,
    TResult Function(Movie movie)? updateIsFavorite,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdateIsFavorite value) updateIsFavorite,
    required TResult Function(_Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult? Function(_Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdateIsFavorite value)? updateIsFavorite,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements MovieActorEvent {
  const factory _Remove({required final String id}) = _$RemoveImpl;

  String get id;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieActorStateCopyWith<$Res> {
  factory $MovieActorStateCopyWith(
          MovieActorState value, $Res Function(MovieActorState) then) =
      _$MovieActorStateCopyWithImpl<$Res, MovieActorState>;
}

/// @nodoc
class _$MovieActorStateCopyWithImpl<$Res, $Val extends MovieActorState>
    implements $MovieActorStateCopyWith<$Res> {
  _$MovieActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IntialImplCopyWith<$Res> {
  factory _$$IntialImplCopyWith(
          _$IntialImpl value, $Res Function(_$IntialImpl) then) =
      __$$IntialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntialImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$IntialImpl>
    implements _$$IntialImplCopyWith<$Res> {
  __$$IntialImplCopyWithImpl(
      _$IntialImpl _value, $Res Function(_$IntialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntialImpl implements _Intial {
  const _$IntialImpl();

  @override
  String toString() {
    return 'MovieActorState.intial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Intial implements MovieActorState {
  const factory _Intial() = _$IntialImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'MovieActorState.inProgress()';
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
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
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
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements MovieActorState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$UpdatedStatusImplCopyWith<$Res> {
  factory _$$UpdatedStatusImplCopyWith(
          _$UpdatedStatusImpl value, $Res Function(_$UpdatedStatusImpl) then) =
      __$$UpdatedStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WatchStatus status});
}

/// @nodoc
class __$$UpdatedStatusImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$UpdatedStatusImpl>
    implements _$$UpdatedStatusImplCopyWith<$Res> {
  __$$UpdatedStatusImplCopyWithImpl(
      _$UpdatedStatusImpl _value, $Res Function(_$UpdatedStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdatedStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WatchStatus,
    ));
  }
}

/// @nodoc

class _$UpdatedStatusImpl implements _UpdatedStatus {
  const _$UpdatedStatusImpl({required this.status});

  @override
  final WatchStatus status;

  @override
  String toString() {
    return 'MovieActorState.updatedStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedStatusImplCopyWith<_$UpdatedStatusImpl> get copyWith =>
      __$$UpdatedStatusImplCopyWithImpl<_$UpdatedStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) {
    return updatedStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) {
    return updatedStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
    required TResult orElse(),
  }) {
    if (updatedStatus != null) {
      return updatedStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) {
    return updatedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) {
    return updatedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (updatedStatus != null) {
      return updatedStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdatedStatus implements MovieActorState {
  const factory _UpdatedStatus({required final WatchStatus status}) =
      _$UpdatedStatusImpl;

  WatchStatus get status;

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedStatusImplCopyWith<_$UpdatedStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedIsFavoriteImplCopyWith<$Res> {
  factory _$$UpdatedIsFavoriteImplCopyWith(_$UpdatedIsFavoriteImpl value,
          $Res Function(_$UpdatedIsFavoriteImpl) then) =
      __$$UpdatedIsFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$UpdatedIsFavoriteImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$UpdatedIsFavoriteImpl>
    implements _$$UpdatedIsFavoriteImplCopyWith<$Res> {
  __$$UpdatedIsFavoriteImplCopyWithImpl(_$UpdatedIsFavoriteImpl _value,
      $Res Function(_$UpdatedIsFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$UpdatedIsFavoriteImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdatedIsFavoriteImpl implements _UpdatedIsFavorite {
  const _$UpdatedIsFavoriteImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'MovieActorState.updatedIsFavorite(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedIsFavoriteImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedIsFavoriteImplCopyWith<_$UpdatedIsFavoriteImpl> get copyWith =>
      __$$UpdatedIsFavoriteImplCopyWithImpl<_$UpdatedIsFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) {
    return updatedIsFavorite(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) {
    return updatedIsFavorite?.call(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
    required TResult orElse(),
  }) {
    if (updatedIsFavorite != null) {
      return updatedIsFavorite(isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) {
    return updatedIsFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) {
    return updatedIsFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (updatedIsFavorite != null) {
      return updatedIsFavorite(this);
    }
    return orElse();
  }
}

abstract class _UpdatedIsFavorite implements MovieActorState {
  const factory _UpdatedIsFavorite({required final bool isFavorite}) =
      _$UpdatedIsFavoriteImpl;

  bool get isFavorite;

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedIsFavoriteImplCopyWith<_$UpdatedIsFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedImplCopyWith<$Res> {
  factory _$$RemovedImplCopyWith(
          _$RemovedImpl value, $Res Function(_$RemovedImpl) then) =
      __$$RemovedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemovedImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$RemovedImpl>
    implements _$$RemovedImplCopyWith<$Res> {
  __$$RemovedImplCopyWithImpl(
      _$RemovedImpl _value, $Res Function(_$RemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemovedImpl implements _Removed {
  const _$RemovedImpl();

  @override
  String toString() {
    return 'MovieActorState.removed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemovedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function(WatchStatus status) updatedStatus,
    required TResult Function(bool isFavorite) updatedIsFavorite,
    required TResult Function() removed,
  }) {
    return removed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function(WatchStatus status)? updatedStatus,
    TResult? Function(bool isFavorite)? updatedIsFavorite,
    TResult? Function()? removed,
  }) {
    return removed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function(WatchStatus status)? updatedStatus,
    TResult Function(bool isFavorite)? updatedIsFavorite,
    TResult Function()? removed,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UpdatedStatus value) updatedStatus,
    required TResult Function(_UpdatedIsFavorite value) updatedIsFavorite,
    required TResult Function(_Removed value) removed,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UpdatedStatus value)? updatedStatus,
    TResult? Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult? Function(_Removed value)? removed,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UpdatedStatus value)? updatedStatus,
    TResult Function(_UpdatedIsFavorite value)? updatedIsFavorite,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _Removed implements MovieActorState {
  const factory _Removed() = _$RemovedImpl;
}
