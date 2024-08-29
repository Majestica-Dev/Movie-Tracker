import 'package:purchases_flutter/purchases_flutter.dart';

class SubscriptionPlans {
  final StoreProduct yearly;
  final StoreProduct weekly;

  SubscriptionPlans({
    required this.yearly,
    required this.weekly,
  });
}
