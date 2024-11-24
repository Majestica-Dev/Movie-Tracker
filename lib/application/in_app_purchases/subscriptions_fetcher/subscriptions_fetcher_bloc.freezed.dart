// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscriptions_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionsFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsFetcherEventCopyWith<$Res> {
  factory $SubscriptionsFetcherEventCopyWith(SubscriptionsFetcherEvent value,
          $Res Function(SubscriptionsFetcherEvent) then) =
      _$SubscriptionsFetcherEventCopyWithImpl<$Res, SubscriptionsFetcherEvent>;
}

/// @nodoc
class _$SubscriptionsFetcherEventCopyWithImpl<$Res,
        $Val extends SubscriptionsFetcherEvent>
    implements $SubscriptionsFetcherEventCopyWith<$Res> {
  _$SubscriptionsFetcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionsFetcherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$SubscriptionsFetcherEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionsFetcherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'SubscriptionsFetcherEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SubscriptionsFetcherEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$SubscriptionsFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(SubscriptionPlans subscriptionPlans) successed,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Successes value) successed,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Successes value)? successed,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Successes value)? successed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsFetcherStateCopyWith<$Res> {
  factory $SubscriptionsFetcherStateCopyWith(SubscriptionsFetcherState value,
          $Res Function(SubscriptionsFetcherState) then) =
      _$SubscriptionsFetcherStateCopyWithImpl<$Res, SubscriptionsFetcherState>;
}

/// @nodoc
class _$SubscriptionsFetcherStateCopyWithImpl<$Res,
        $Val extends SubscriptionsFetcherState>
    implements $SubscriptionsFetcherStateCopyWith<$Res> {
  _$SubscriptionsFetcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionsFetcherState
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
    extends _$SubscriptionsFetcherStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionsFetcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'SubscriptionsFetcherState.inProgress()';
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
    required TResult Function(SubscriptionPlans subscriptionPlans) successed,
    required TResult Function() failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult? Function()? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult Function()? failed,
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
    required TResult Function(_Successes value) successed,
    required TResult Function(_Failed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Successes value)? successed,
    TResult? Function(_Failed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Successes value)? successed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements SubscriptionsFetcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$SuccessesImplCopyWith<$Res> {
  factory _$$SuccessesImplCopyWith(
          _$SuccessesImpl value, $Res Function(_$SuccessesImpl) then) =
      __$$SuccessesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionPlans subscriptionPlans});
}

/// @nodoc
class __$$SuccessesImplCopyWithImpl<$Res>
    extends _$SubscriptionsFetcherStateCopyWithImpl<$Res, _$SuccessesImpl>
    implements _$$SuccessesImplCopyWith<$Res> {
  __$$SuccessesImplCopyWithImpl(
      _$SuccessesImpl _value, $Res Function(_$SuccessesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionsFetcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionPlans = null,
  }) {
    return _then(_$SuccessesImpl(
      null == subscriptionPlans
          ? _value.subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlans,
    ));
  }
}

/// @nodoc

class _$SuccessesImpl implements _Successes {
  const _$SuccessesImpl(this.subscriptionPlans);

  @override
  final SubscriptionPlans subscriptionPlans;

  @override
  String toString() {
    return 'SubscriptionsFetcherState.successed(subscriptionPlans: $subscriptionPlans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessesImpl &&
            (identical(other.subscriptionPlans, subscriptionPlans) ||
                other.subscriptionPlans == subscriptionPlans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionPlans);

  /// Create a copy of SubscriptionsFetcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessesImplCopyWith<_$SuccessesImpl> get copyWith =>
      __$$SuccessesImplCopyWithImpl<_$SuccessesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(SubscriptionPlans subscriptionPlans) successed,
    required TResult Function() failed,
  }) {
    return successed(subscriptionPlans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult? Function()? failed,
  }) {
    return successed?.call(subscriptionPlans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (successed != null) {
      return successed(subscriptionPlans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Successes value) successed,
    required TResult Function(_Failed value) failed,
  }) {
    return successed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Successes value)? successed,
    TResult? Function(_Failed value)? failed,
  }) {
    return successed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Successes value)? successed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successed != null) {
      return successed(this);
    }
    return orElse();
  }
}

abstract class _Successes implements SubscriptionsFetcherState {
  const factory _Successes(final SubscriptionPlans subscriptionPlans) =
      _$SuccessesImpl;

  SubscriptionPlans get subscriptionPlans;

  /// Create a copy of SubscriptionsFetcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessesImplCopyWith<_$SuccessesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$SubscriptionsFetcherStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionsFetcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'SubscriptionsFetcherState.failed()';
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
    required TResult Function() inProgress,
    required TResult Function(SubscriptionPlans subscriptionPlans) successed,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SubscriptionPlans subscriptionPlans)? successed,
    TResult Function()? failed,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Successes value) successed,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Successes value)? successed,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Successes value)? successed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SubscriptionsFetcherState {
  const factory _Failed() = _$FailedImpl;
}
