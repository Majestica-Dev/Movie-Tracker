// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchaseActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseActorEventCopyWith<$Res> {
  factory $PurchaseActorEventCopyWith(
          PurchaseActorEvent value, $Res Function(PurchaseActorEvent) then) =
      _$PurchaseActorEventCopyWithImpl<$Res, PurchaseActorEvent>;
}

/// @nodoc
class _$PurchaseActorEventCopyWithImpl<$Res, $Val extends PurchaseActorEvent>
    implements $PurchaseActorEventCopyWith<$Res> {
  _$PurchaseActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BuySubscriptionImplCopyWith<$Res> {
  factory _$$BuySubscriptionImplCopyWith(_$BuySubscriptionImpl value,
          $Res Function(_$BuySubscriptionImpl) then) =
      __$$BuySubscriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreProduct product, bool isFromFailureDialog});

  $StoreProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$BuySubscriptionImplCopyWithImpl<$Res>
    extends _$PurchaseActorEventCopyWithImpl<$Res, _$BuySubscriptionImpl>
    implements _$$BuySubscriptionImplCopyWith<$Res> {
  __$$BuySubscriptionImplCopyWithImpl(
      _$BuySubscriptionImpl _value, $Res Function(_$BuySubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isFromFailureDialog = null,
  }) {
    return _then(_$BuySubscriptionImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as StoreProduct,
      isFromFailureDialog: null == isFromFailureDialog
          ? _value.isFromFailureDialog
          : isFromFailureDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res> get product {
    return $StoreProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$BuySubscriptionImpl implements _BuySubscription {
  const _$BuySubscriptionImpl(
      {required this.product, this.isFromFailureDialog = false});

  @override
  final StoreProduct product;
  @override
  @JsonKey()
  final bool isFromFailureDialog;

  @override
  String toString() {
    return 'PurchaseActorEvent.buySubscription(product: $product, isFromFailureDialog: $isFromFailureDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuySubscriptionImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isFromFailureDialog, isFromFailureDialog) ||
                other.isFromFailureDialog == isFromFailureDialog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, isFromFailureDialog);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuySubscriptionImplCopyWith<_$BuySubscriptionImpl> get copyWith =>
      __$$BuySubscriptionImplCopyWithImpl<_$BuySubscriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) {
    return buySubscription(product, isFromFailureDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) {
    return buySubscription?.call(product, isFromFailureDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (buySubscription != null) {
      return buySubscription(product, isFromFailureDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) {
    return buySubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) {
    return buySubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (buySubscription != null) {
      return buySubscription(this);
    }
    return orElse();
  }
}

abstract class _BuySubscription implements PurchaseActorEvent {
  const factory _BuySubscription(
      {required final StoreProduct product,
      final bool isFromFailureDialog}) = _$BuySubscriptionImpl;

  StoreProduct get product;
  bool get isFromFailureDialog;

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuySubscriptionImplCopyWith<_$BuySubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreImplCopyWith<$Res> {
  factory _$$RestoreImplCopyWith(
          _$RestoreImpl value, $Res Function(_$RestoreImpl) then) =
      __$$RestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreImplCopyWithImpl<$Res>
    extends _$PurchaseActorEventCopyWithImpl<$Res, _$RestoreImpl>
    implements _$$RestoreImplCopyWith<$Res> {
  __$$RestoreImplCopyWithImpl(
      _$RestoreImpl _value, $Res Function(_$RestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestoreImpl implements _Restore {
  const _$RestoreImpl();

  @override
  String toString() {
    return 'PurchaseActorEvent.restore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _Restore implements PurchaseActorEvent {
  const factory _Restore() = _$RestoreImpl;
}

/// @nodoc
abstract class _$$FailImplCopyWith<$Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl value, $Res Function(_$FailImpl) then) =
      __$$FailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailImplCopyWithImpl<$Res>
    extends _$PurchaseActorEventCopyWithImpl<$Res, _$FailImpl>
    implements _$$FailImplCopyWith<$Res> {
  __$$FailImplCopyWithImpl(_$FailImpl _value, $Res Function(_$FailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailImpl implements _Fail {
  const _$FailImpl();

  @override
  String toString() {
    return 'PurchaseActorEvent.fail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) {
    return fail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) {
    return fail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements PurchaseActorEvent {
  const factory _Fail() = _$FailImpl;
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$PurchaseActorEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopImpl implements _Stop {
  const _$StopImpl();

  @override
  String toString() {
    return 'PurchaseActorEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements PurchaseActorEvent {
  const factory _Stop() = _$StopImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PurchaseActorEventCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'PurchaseActorEvent.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreProduct product, bool isFromFailureDialog)
        buySubscription,
    required TResult Function() restore,
    required TResult Function() fail,
    required TResult Function() stop,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult? Function()? restore,
    TResult? Function()? fail,
    TResult? Function()? stop,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreProduct product, bool isFromFailureDialog)?
        buySubscription,
    TResult Function()? restore,
    TResult Function()? fail,
    TResult Function()? stop,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuySubscription value) buySubscription,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Fail value) fail,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuySubscription value)? buySubscription,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuySubscription value)? buySubscription,
    TResult Function(_Restore value)? restore,
    TResult Function(_Fail value)? fail,
    TResult Function(_Stop value)? stop,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PurchaseActorEvent {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
mixin _$PurchaseActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseActorStateCopyWith<$Res> {
  factory $PurchaseActorStateCopyWith(
          PurchaseActorState value, $Res Function(PurchaseActorState) then) =
      _$PurchaseActorStateCopyWithImpl<$Res, PurchaseActorState>;
}

/// @nodoc
class _$PurchaseActorStateCopyWithImpl<$Res, $Val extends PurchaseActorState>
    implements $PurchaseActorStateCopyWith<$Res> {
  _$PurchaseActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseActorState
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
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PurchaseActorState.initial()';
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
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PurchaseActorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'PurchaseActorState.inProgress()';
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
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements PurchaseActorState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$PurchasedImplCopyWith<$Res> {
  factory _$$PurchasedImplCopyWith(
          _$PurchasedImpl value, $Res Function(_$PurchasedImpl) then) =
      __$$PurchasedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchasedImplCopyWithImpl<$Res>
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$PurchasedImpl>
    implements _$$PurchasedImplCopyWith<$Res> {
  __$$PurchasedImplCopyWithImpl(
      _$PurchasedImpl _value, $Res Function(_$PurchasedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PurchasedImpl implements _Purchased {
  const _$PurchasedImpl();

  @override
  String toString() {
    return 'PurchaseActorState.purchased()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PurchasedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return purchased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return purchased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (purchased != null) {
      return purchased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return purchased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return purchased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (purchased != null) {
      return purchased(this);
    }
    return orElse();
  }
}

abstract class _Purchased implements PurchaseActorState {
  const factory _Purchased() = _$PurchasedImpl;
}

/// @nodoc
abstract class _$$RestoredImplCopyWith<$Res> {
  factory _$$RestoredImplCopyWith(
          _$RestoredImpl value, $Res Function(_$RestoredImpl) then) =
      __$$RestoredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoredImplCopyWithImpl<$Res>
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$RestoredImpl>
    implements _$$RestoredImplCopyWith<$Res> {
  __$$RestoredImplCopyWithImpl(
      _$RestoredImpl _value, $Res Function(_$RestoredImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestoredImpl implements _Restored {
  const _$RestoredImpl();

  @override
  String toString() {
    return 'PurchaseActorState.restored()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return restored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return restored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return restored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return restored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored(this);
    }
    return orElse();
  }
}

abstract class _Restored implements PurchaseActorState {
  const factory _Restored() = _$RestoredImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreProduct? storeProduct});

  $StoreProductCopyWith<$Res>? get storeProduct;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeProduct = freezed,
  }) {
    return _then(_$FailedImpl(
      storeProduct: freezed == storeProduct
          ? _value.storeProduct
          : storeProduct // ignore: cast_nullable_to_non_nullable
              as StoreProduct?,
    ));
  }

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res>? get storeProduct {
    if (_value.storeProduct == null) {
      return null;
    }

    return $StoreProductCopyWith<$Res>(_value.storeProduct!, (value) {
      return _then(_value.copyWith(storeProduct: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.storeProduct});

  @override
  final StoreProduct? storeProduct;

  @override
  String toString() {
    return 'PurchaseActorState.failed(storeProduct: $storeProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.storeProduct, storeProduct) ||
                other.storeProduct == storeProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeProduct);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return failed(storeProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return failed?.call(storeProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(storeProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PurchaseActorState {
  const factory _Failed({required final StoreProduct? storeProduct}) =
      _$FailedImpl;

  StoreProduct? get storeProduct;

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAccountsToRestoreImplCopyWith<$Res> {
  factory _$$NoAccountsToRestoreImplCopyWith(_$NoAccountsToRestoreImpl value,
          $Res Function(_$NoAccountsToRestoreImpl) then) =
      __$$NoAccountsToRestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAccountsToRestoreImplCopyWithImpl<$Res>
    extends _$PurchaseActorStateCopyWithImpl<$Res, _$NoAccountsToRestoreImpl>
    implements _$$NoAccountsToRestoreImplCopyWith<$Res> {
  __$$NoAccountsToRestoreImplCopyWithImpl(_$NoAccountsToRestoreImpl _value,
      $Res Function(_$NoAccountsToRestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoAccountsToRestoreImpl implements _NoAccountsToRestore {
  const _$NoAccountsToRestoreImpl();

  @override
  String toString() {
    return 'PurchaseActorState.noAccountsToRestore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAccountsToRestoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() purchased,
    required TResult Function() restored,
    required TResult Function(StoreProduct? storeProduct) failed,
    required TResult Function() noAccountsToRestore,
  }) {
    return noAccountsToRestore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? purchased,
    TResult? Function()? restored,
    TResult? Function(StoreProduct? storeProduct)? failed,
    TResult? Function()? noAccountsToRestore,
  }) {
    return noAccountsToRestore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? purchased,
    TResult Function()? restored,
    TResult Function(StoreProduct? storeProduct)? failed,
    TResult Function()? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (noAccountsToRestore != null) {
      return noAccountsToRestore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Purchased value) purchased,
    required TResult Function(_Restored value) restored,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoAccountsToRestore value) noAccountsToRestore,
  }) {
    return noAccountsToRestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Purchased value)? purchased,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_NoAccountsToRestore value)? noAccountsToRestore,
  }) {
    return noAccountsToRestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Purchased value)? purchased,
    TResult Function(_Restored value)? restored,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoAccountsToRestore value)? noAccountsToRestore,
    required TResult orElse(),
  }) {
    if (noAccountsToRestore != null) {
      return noAccountsToRestore(this);
    }
    return orElse();
  }
}

abstract class _NoAccountsToRestore implements PurchaseActorState {
  const factory _NoAccountsToRestore() = _$NoAccountsToRestoreImpl;
}
