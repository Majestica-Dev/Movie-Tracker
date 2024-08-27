part of 'purchase_actor_bloc.dart';

@freezed
class PurchaseActorState with _$PurchaseActorState {
  const factory PurchaseActorState.initial() = _Initial;

  const factory PurchaseActorState.inProgress() = _InProgress;

  const factory PurchaseActorState.purchased() = _Purchased;

  const factory PurchaseActorState.restored() = _Restored;

  const factory PurchaseActorState.failed({
    required StoreProduct? storeProduct,
  }) = _Failed;

  const factory PurchaseActorState.noAccountsToRestore() = _NoAccountsToRestore;
}
