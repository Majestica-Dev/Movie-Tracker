part of 'purchase_actor_bloc.dart';

@freezed
class PurchaseActorEvent with _$PurchaseActorEvent {
  const factory PurchaseActorEvent.buySubscription({
    required StoreProduct product,
    required PaywallFrom paywallFrom,
    @Default(false) bool isFromFailureDialog,
  }) = _BuySubscription;

  const factory PurchaseActorEvent.restore() = _Restore;
  const factory PurchaseActorEvent.fail() = _Fail;
  const factory PurchaseActorEvent.stop() = _Stop;
  const factory PurchaseActorEvent.success() = _Success;
}
