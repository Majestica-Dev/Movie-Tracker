// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_checker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PremiumCheckerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumCheckerEventCopyWith<$Res> {
  factory $PremiumCheckerEventCopyWith(
          PremiumCheckerEvent value, $Res Function(PremiumCheckerEvent) then) =
      _$PremiumCheckerEventCopyWithImpl<$Res, PremiumCheckerEvent>;
}

/// @nodoc
class _$PremiumCheckerEventCopyWithImpl<$Res, $Val extends PremiumCheckerEvent>
    implements $PremiumCheckerEventCopyWith<$Res> {
  _$PremiumCheckerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PremiumCheckerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$PremiumCheckerEventCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of PremiumCheckerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckImpl with DiagnosticableTreeMixin implements _Check {
  const _$CheckImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PremiumCheckerEvent.check()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PremiumCheckerEvent.check'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Check implements PremiumCheckerEvent {
  const factory _Check() = _$CheckImpl;
}

/// @nodoc
mixin _$PremiumCheckerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() premium,
    required TResult Function() limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? premium,
    TResult? Function()? limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? premium,
    TResult Function()? limited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Premium value) premium,
    required TResult Function(_Limited value) limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Premium value)? premium,
    TResult? Function(_Limited value)? limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Premium value)? premium,
    TResult Function(_Limited value)? limited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumCheckerStateCopyWith<$Res> {
  factory $PremiumCheckerStateCopyWith(
          PremiumCheckerState value, $Res Function(PremiumCheckerState) then) =
      _$PremiumCheckerStateCopyWithImpl<$Res, PremiumCheckerState>;
}

/// @nodoc
class _$PremiumCheckerStateCopyWithImpl<$Res, $Val extends PremiumCheckerState>
    implements $PremiumCheckerStateCopyWith<$Res> {
  _$PremiumCheckerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PremiumCheckerState
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
    extends _$PremiumCheckerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PremiumCheckerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PremiumCheckerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PremiumCheckerState.initial'));
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
    required TResult Function() premium,
    required TResult Function() limited,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? premium,
    TResult? Function()? limited,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? premium,
    TResult Function()? limited,
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
    required TResult Function(_Premium value) premium,
    required TResult Function(_Limited value) limited,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Premium value)? premium,
    TResult? Function(_Limited value)? limited,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Premium value)? premium,
    TResult Function(_Limited value)? limited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PremiumCheckerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PremiumImplCopyWith<$Res> {
  factory _$$PremiumImplCopyWith(
          _$PremiumImpl value, $Res Function(_$PremiumImpl) then) =
      __$$PremiumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PremiumImplCopyWithImpl<$Res>
    extends _$PremiumCheckerStateCopyWithImpl<$Res, _$PremiumImpl>
    implements _$$PremiumImplCopyWith<$Res> {
  __$$PremiumImplCopyWithImpl(
      _$PremiumImpl _value, $Res Function(_$PremiumImpl) _then)
      : super(_value, _then);

  /// Create a copy of PremiumCheckerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PremiumImpl with DiagnosticableTreeMixin implements _Premium {
  const _$PremiumImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PremiumCheckerState.premium()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PremiumCheckerState.premium'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PremiumImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() premium,
    required TResult Function() limited,
  }) {
    return premium();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? premium,
    TResult? Function()? limited,
  }) {
    return premium?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? premium,
    TResult Function()? limited,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Premium value) premium,
    required TResult Function(_Limited value) limited,
  }) {
    return premium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Premium value)? premium,
    TResult? Function(_Limited value)? limited,
  }) {
    return premium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Premium value)? premium,
    TResult Function(_Limited value)? limited,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium(this);
    }
    return orElse();
  }
}

abstract class _Premium implements PremiumCheckerState {
  const factory _Premium() = _$PremiumImpl;
}

/// @nodoc
abstract class _$$LimitedImplCopyWith<$Res> {
  factory _$$LimitedImplCopyWith(
          _$LimitedImpl value, $Res Function(_$LimitedImpl) then) =
      __$$LimitedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LimitedImplCopyWithImpl<$Res>
    extends _$PremiumCheckerStateCopyWithImpl<$Res, _$LimitedImpl>
    implements _$$LimitedImplCopyWith<$Res> {
  __$$LimitedImplCopyWithImpl(
      _$LimitedImpl _value, $Res Function(_$LimitedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PremiumCheckerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LimitedImpl with DiagnosticableTreeMixin implements _Limited {
  const _$LimitedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PremiumCheckerState.limited()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PremiumCheckerState.limited'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LimitedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() premium,
    required TResult Function() limited,
  }) {
    return limited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? premium,
    TResult? Function()? limited,
  }) {
    return limited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? premium,
    TResult Function()? limited,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Premium value) premium,
    required TResult Function(_Limited value) limited,
  }) {
    return limited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Premium value)? premium,
    TResult? Function(_Limited value)? limited,
  }) {
    return limited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Premium value)? premium,
    TResult Function(_Limited value)? limited,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited(this);
    }
    return orElse();
  }
}

abstract class _Limited implements PremiumCheckerState {
  const factory _Limited() = _$LimitedImpl;
}
