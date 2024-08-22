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
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, WatchStatus status) updateStatus,
    required TResult Function(String id) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, WatchStatus status)? updateStatus,
    TResult? Function(String id)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, WatchStatus status)? updateStatus,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieActorEventCopyWith<MovieActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieActorEventCopyWith<$Res> {
  factory $MovieActorEventCopyWith(
          MovieActorEvent value, $Res Function(MovieActorEvent) then) =
      _$MovieActorEventCopyWithImpl<$Res, MovieActorEvent>;
  @useResult
  $Res call({String id});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, WatchStatus status});
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
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$UpdateStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WatchStatus,
    ));
  }
}

/// @nodoc

class _$UpdateStatusImpl implements _UpdateStatus {
  const _$UpdateStatusImpl({required this.id, required this.status});

  @override
  final String id;
  @override
  final WatchStatus status;

  @override
  String toString() {
    return 'MovieActorEvent.updateStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status);

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
    required TResult Function(String id, WatchStatus status) updateStatus,
    required TResult Function(String id) remove,
  }) {
    return updateStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, WatchStatus status)? updateStatus,
    TResult? Function(String id)? remove,
  }) {
    return updateStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, WatchStatus status)? updateStatus,
    TResult Function(String id)? remove,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_Remove value) remove,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_Remove value)? remove,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
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
  const factory _UpdateStatus(
      {required final String id,
      required final WatchStatus status}) = _$UpdateStatusImpl;

  @override
  String get id;
  WatchStatus get status;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String id, WatchStatus status) updateStatus,
    required TResult Function(String id) remove,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, WatchStatus status)? updateStatus,
    TResult? Function(String id)? remove,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, WatchStatus status)? updateStatus,
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
    required TResult Function(_Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStatus value)? updateStatus,
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

  @override
  String get id;

  /// Create a copy of MovieActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    required TResult Function() succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function()? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
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
    required TResult Function() succeeded,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function()? succeeded,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function()? succeeded,
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
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
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
    required TResult Function() succeeded,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function()? succeeded,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function()? succeeded,
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
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
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
abstract class _$$SucceededImplCopyWith<$Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl value, $Res Function(_$SucceededImpl) then) =
      __$$SucceededImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res, _$SucceededImpl>
    implements _$$SucceededImplCopyWith<$Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl _value, $Res Function(_$SucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SucceededImpl implements _Succeeded {
  const _$SucceededImpl();

  @override
  String toString() {
    return 'MovieActorState.succeeded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SucceededImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() inProgress,
    required TResult Function() succeeded,
  }) {
    return succeeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? inProgress,
    TResult? Function()? succeeded,
  }) {
    return succeeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? inProgress,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) intial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intial value)? intial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? intial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded implements MovieActorState {
  const factory _Succeeded() = _$SucceededImpl;
}
