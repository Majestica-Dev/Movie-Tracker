import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/utils/review/review_service.dart';
import 'package:movie_tracker/domain/purchases/i_purchase_action_repo.dart';
import 'package:movie_tracker/domain/review/review_from.dart';
import 'package:purchases_flutter/models/store_product_wrapper.dart';

part 'purchase_actor_event.dart';
part 'purchase_actor_state.dart';
part 'purchase_actor_bloc.freezed.dart';

@singleton
class PurchaseActorBloc extends Bloc<PurchaseActorEvent, PurchaseActorState> {
  final IPurchaseActionRepo _purchaseActionRepo;
  final ReviewService _reviewService;

  PurchaseActorBloc(
    this._purchaseActionRepo,
    this._reviewService,
  ) : super(const PurchaseActorState.initial()) {
    on<_BuySubscription>(_onBuySubscription);
    on<_Restore>(_onRestore);
  }

  Future<void> _onBuySubscription(
    _BuySubscription event,
    Emitter<PurchaseActorState> emit,
  ) async {
    emit(const PurchaseActorState.inProgress());

    final result = await _purchaseActionRepo.buySubscription(event.product);

    result.fold(
      (l) => emit(
        PurchaseActorState.failed(
          storeProduct: event.product,
        ),
      ),
      (r) {
        emit(const PurchaseActorState.purchased());

        Timer(
          const Duration(seconds: 1),
          () {
            _reviewService.checkAndRequestReviw(
              reviewFrom: ReviewFrom.boughtPremium,
            );
          },
        );
      },
    );
  }

  Future<void> _onRestore(
    _Restore event,
    Emitter<PurchaseActorState> emit,
  ) async {
    emit(const PurchaseActorState.inProgress());

    final restore = await _purchaseActionRepo.restorePurchases();

    restore.fold(
      (l) => emit(const PurchaseActorState.failed(storeProduct: null)),
      (customerInfo) {
        final hasActiveSubscription =
            customerInfo.activeSubscriptions.isNotEmpty ||
                customerInfo.nonSubscriptionTransactions.isNotEmpty;

        if (hasActiveSubscription) {
          emit(const PurchaseActorState.restored());
        } else {
          emit(const PurchaseActorState.noAccountsToRestore());
        }
      },
    );
  }
}
