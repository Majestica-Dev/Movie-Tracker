part of 'subscriptions_fetcher_bloc.dart';

@freezed
class SubscriptionsFetcherState with _$SubscriptionsFetcherState {
  const factory SubscriptionsFetcherState.inProgress() = _InProgress;

  const factory SubscriptionsFetcherState.successed(
      SubscriptionPlans subscriptionPlans) = _Successes;

  const factory SubscriptionsFetcherState.failed() = _Failed;
}
