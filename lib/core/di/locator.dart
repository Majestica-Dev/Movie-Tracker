import 'package:get_it/get_it.dart';
import 'package:movie_tracker/application/fisrt_visit/first_visit_cubit.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/bloc/movie_ai_rec_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/search/movie_search_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/core/utils/review/review_service.dart';
import 'package:movie_tracker/infrastructure/movie/ai_rec/manager/ai_movies_pref_manager.dart';
import 'package:movie_tracker/infrastructure/notifications/reminder/reminder_functions.dart';

import 'package:movie_tracker/presentation/core/router/app_router.dart';

abstract final class Locator {
  static final GetIt _getIt = GetIt.I;

  static AppRouter get appRouter => _getIt<AppRouter>();

  static MovieSearchBloc get movieSearchBloc => _getIt<MovieSearchBloc>();

  static MovieWatcherBloc get movieWatcherBloc => _getIt<MovieWatcherBloc>();

  static MovieSaverBloc get movieSaverBloc => _getIt<MovieSaverBloc>();

  static MovieActorBloc get movieActorBloc => _getIt<MovieActorBloc>();

  static MovieAiRecFormCubit get movieAiRecFormCubit =>
      _getIt<MovieAiRecFormCubit>();

  static MovieAiRecBloc get movieAiRecBloc => _getIt<MovieAiRecBloc>();

  static FirstVisitCubit get firstVisitCubit => _getIt<FirstVisitCubit>();

  static ReviewService get reviewService => _getIt<ReviewService>();

  static ReminderFunctions get reminderFunctions => _getIt<ReminderFunctions>();

  static PremiumCheckerBloc get premiumCheckerBloc =>
      _getIt<PremiumCheckerBloc>();

  static SubscriptionsFetcherBloc get subscriptionsFetcherBloc =>
      _getIt<SubscriptionsFetcherBloc>();

  static PurchaseActorBloc get purchaseActorBloc => _getIt<PurchaseActorBloc>();

  static AiMoviesPrefManager get aiMoviesPrefManager =>
      _getIt<AiMoviesPrefManager>();
}
