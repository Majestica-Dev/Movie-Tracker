import 'package:movie_tracker/domain/purchases/entities/subscription_plans.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/purchases/i_subscriptions_repo.dart';

part 'subscriptions_fetcher_event.dart';
part 'subscriptions_fetcher_state.dart';
part 'subscriptions_fetcher_bloc.freezed.dart';

@injectable
class SubscriptionsFetcherBloc
    extends Bloc<SubscriptionsFetcherEvent, SubscriptionsFetcherState> {
  final ISubscriptionsRepo _subscriptionsRepo;

  SubscriptionsFetcherBloc(this._subscriptionsRepo)
      : super(const SubscriptionsFetcherState.inProgress()) {
    on<_Fetch>(_fetch);
  }

  Future<void> _fetch(
    _Fetch event,
    Emitter<SubscriptionsFetcherState> emit,
  ) async {
    emit(const SubscriptionsFetcherState.inProgress());

    final result = await _subscriptionsRepo.fetchSubscriptions();

    result.fold(
      (l) {
        emit(const SubscriptionsFetcherState.failed());
      },
      (subscriptionPlans) => emit(
        SubscriptionsFetcherState.successed(subscriptionPlans),
      ),
    );
  }
}
