part of 'subscriptions_fetcher_bloc.dart';

@freezed
class SubscriptionsFetcherEvent with _$SubscriptionsFetcherEvent {
  const factory SubscriptionsFetcherEvent.fetch() = _Fetch;
}
