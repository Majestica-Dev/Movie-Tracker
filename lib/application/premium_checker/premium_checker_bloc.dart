import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/purchases/i_purchase_action_repo.dart';
import 'package:movie_tracker/infrastructure/premium/premium_pref_manager.dart';

part 'premium_checker_event.dart';
part 'premium_checker_state.dart';
part 'premium_checker_bloc.freezed.dart';

@singleton
class PremiumCheckerBloc
    extends Bloc<PremiumCheckerEvent, PremiumCheckerState> {
  final PremiumPrefManager _premiumCheckerManager;

  final IPurchaseActionRepo _purchaseRepo;

  PremiumCheckerBloc(
    this._premiumCheckerManager,
    this._purchaseRepo,
  ) : super(const PremiumCheckerState.initial()) {
    on<_Check>(_onCheckPremium);
  }

  Future<void> _onCheckPremium(
    _Check event,
    Emitter<PremiumCheckerState> emit,
  ) async {
    final bool isPremium = _premiumCheckerManager.hasPremium;

    if (isPremium) {
      emit(const PremiumCheckerState.premium());
    } else {
      emit(const PremiumCheckerState.limited());
    }

    final result = await _purchaseRepo.hasActivePurchase;

    result.fold(
      (l) {},
      (hasActiveSubscription) async {
        if (hasActiveSubscription) {
          emit(const PremiumCheckerState.premium());

          await _premiumCheckerManager.setHasPremium(true);
        } else {
          emit(const PremiumCheckerState.limited());
          await _premiumCheckerManager.setHasPremium(false);
        }
      },
    );
  }
}
