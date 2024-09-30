import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/first_visit/first_visit_cubit.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/use_count/movie_ai_rec_use_count_cubit.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';

class AppGlobalProviders extends StatelessWidget {
  final Widget child;

  const AppGlobalProviders({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieWatcherBloc>(
          lazy: false,
          create: (_) => Locator.movieWatcherBloc
            ..add(
              const MovieWatcherEvent.init(),
            ),
        ),
        BlocProvider<PremiumCheckerBloc>(
          lazy: false,
          create: (_) => Locator.premiumCheckerBloc
            ..add(
              const PremiumCheckerEvent.check(),
            ),
        ),
        BlocProvider<SubscriptionsFetcherBloc>(
          lazy: false,
          create: (_) => Locator.subscriptionsFetcherBloc
            ..add(
              const SubscriptionsFetcherEvent.fetch(),
            ),
        ),
        BlocProvider<PurchaseActorBloc>(
          create: (_) => Locator.purchaseActorBloc,
        ),
        BlocProvider<MovieSaverBloc>(
          create: (_) => Locator.movieSaverBloc,
        ),
        BlocProvider<FirstVisitCubit>(
          create: (_) => Locator.firstVisitCubit,
          lazy: false,
        ),
        BlocProvider<MovieAiRecUseCountCubit>(
          create: (_) => Locator.movieAiRecUseCountCubit,
        ),
      ],
      child: child,
    );
  }
}
