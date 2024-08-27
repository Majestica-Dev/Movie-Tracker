part of 'premium_checker_bloc.dart';

@freezed
class PremiumCheckerEvent with _$PremiumCheckerEvent {
  const factory PremiumCheckerEvent.check() = _Check;
}
