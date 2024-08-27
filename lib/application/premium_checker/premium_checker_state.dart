part of 'premium_checker_bloc.dart';

@freezed
class PremiumCheckerState with _$PremiumCheckerState {
  const factory PremiumCheckerState.initial() = _Initial;

  const factory PremiumCheckerState.premium() = _Premium;

  const factory PremiumCheckerState.limited() = _Limited;
}
