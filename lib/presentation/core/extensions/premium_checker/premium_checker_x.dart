import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';

extension PremiumCheckerX on PremiumCheckerState {
  bool get hasPremium {
    return maybeMap(
      premium: (_) => true,
      orElse: () => false,
    );
  }
}
