// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart' as _i1054;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:in_app_review/in_app_review.dart' as _i553;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:uuid/uuid.dart' as _i706;

import '../../application/fisrt_visit/first_visit_cubit.dart' as _i808;
import '../../application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart'
    as _i1013;
import '../../application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart'
    as _i387;
import '../../application/movie/actor/movie_actor_bloc.dart' as _i195;
import '../../application/movie/ai_rec/bloc/movie_ai_rec_bloc.dart' as _i501;
import '../../application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart'
    as _i481;
import '../../application/movie/saver/movie_saver_bloc.dart' as _i47;
import '../../application/movie/search/movie_search_bloc.dart' as _i1024;
import '../../application/movie/watcher/movie_watcher_bloc.dart' as _i756;
import '../../application/premium_checker/premium_checker_bloc.dart' as _i277;
import '../../domain/movie/repositories/i_movie_ai_rec.dart' as _i561;
import '../../domain/movie/repositories/i_movie_repo.dart' as _i72;
import '../../domain/movie/repositories/i_movie_search_repo.dart' as _i1069;
import '../../domain/purchases/i_purchase_action_repo.dart' as _i5;
import '../../domain/purchases/i_subscriptions_repo.dart' as _i617;
import '../../infrastructure/core/app_injectable_module.dart' as _i756;
import '../../infrastructure/core/local_database/drift_database.dart' as _i841;
import '../../infrastructure/core/shared_prefs/raw_manager.dart' as _i541;
import '../../infrastructure/core/shared_prefs/shared_prefs_manager.dart'
    as _i352;
import '../../infrastructure/fisrt_visit/fisrt_visit_pref_manager.dart'
    as _i657;
import '../../infrastructure/movie/ai_rec/gpt_movie_rec_impl.dart' as _i914;
import '../../infrastructure/movie/ai_rec/manager/movie_ai_rec_pref_manager.dart'
    as _i1053;
import '../../infrastructure/movie/ai_rec/movie_ai_rec_impl.dart' as _i691;
import '../../infrastructure/movie/manager/movie_pref_manager.dart' as _i661;
import '../../infrastructure/movie/movie_repo_impl.dart' as _i338;
import '../../infrastructure/movie/search/movie_search_repo_impl.dart' as _i437;
import '../../infrastructure/movie/search/tmdb/tmdb_search_service.dart'
    as _i71;
import '../../infrastructure/notifications/reminder/reminder_functions.dart'
    as _i845;
import '../../infrastructure/notifications/reminder/reminder_pref_manager.dart'
    as _i947;
import '../../infrastructure/premium/premium_pref_manager.dart' as _i125;
import '../../infrastructure/purchases/purchase_actor_repo_impl.dart' as _i690;
import '../../infrastructure/purchases/subscriptions_repo_impl.dart' as _i621;
import '../../presentation/core/router/app_router.dart' as _i300;
import '../utils/review/review_pref_manager.dart' as _i630;
import '../utils/review/review_service.dart' as _i495;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  gh.factory<_i481.MovieAiRecFormCubit>(() => _i481.MovieAiRecFormCubit());
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appInjectableModule.sharedPreferences(),
    preResolve: true,
  );
  gh.singleton<_i553.InAppReview>(() => appInjectableModule.inAppReview);
  gh.singleton<_i706.Uuid>(() => appInjectableModule.uuid);
  gh.singleton<_i841.AppDriftDatabase>(() => _i841.AppDriftDatabase());
  gh.singleton<_i300.AppRouter>(() => _i300.AppRouter());
  gh.lazySingleton<_i361.Dio>(() => appInjectableModule.dio);
  gh.lazySingleton<_i1054.OpenAI>(() => appInjectableModule.openAI);
  gh.singleton<_i617.ISubscriptionsRepo>(() => _i621.SubscriptionsRepoImpl());
  gh.factory<_i387.SubscriptionsFetcherBloc>(
      () => _i387.SubscriptionsFetcherBloc(gh<_i617.ISubscriptionsRepo>()));
  gh.singleton<_i5.IPurchaseActionRepo>(() => _i690.PurchaseActionRepoImpl());
  gh.factory<_i541.SharedPrefsRawManager>(
      () => _i541.SharedPrefsRawManager(gh<_i460.SharedPreferences>()));
  gh.singleton<_i71.TmdbSearchService>(
      () => _i71.TmdbSearchService(dio: gh<_i361.Dio>()));
  gh.singleton<_i72.IMovieRepo>(
      () => _i338.MovieRepoImpl(gh<_i841.AppDriftDatabase>()));
  gh.singleton<_i756.MovieWatcherBloc>(
      () => _i756.MovieWatcherBloc(gh<_i72.IMovieRepo>()));
  gh.singleton<_i914.GptMovieRecImpl>(
      () => _i914.GptMovieRecImpl(openAI: gh<_i1054.OpenAI>()));
  gh.singleton<_i352.SharedPrefsManager>(
      () => _i352.SharedPrefsManager(gh<_i541.SharedPrefsRawManager>()));
  gh.singleton<_i1069.IMovieSearchRepo>(
      () => _i437.MovieSearchRepoImpl(gh<_i71.TmdbSearchService>()));
  gh.factory<_i195.MovieActorBloc>(
      () => _i195.MovieActorBloc(gh<_i72.IMovieRepo>()));
  gh.factory<_i1024.MovieSearchBloc>(
      () => _i1024.MovieSearchBloc(gh<_i1069.IMovieSearchRepo>()));
  gh.singleton<_i630.ReviewPrefManager>(
      () => _i630.ReviewPrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i661.MoviePrefManager>(
      () => _i661.MoviePrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i1053.MovieAiRecPrefManager>(
      () => _i1053.MovieAiRecPrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i657.FisrtVisitPrefManager>(
      () => _i657.FisrtVisitPrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i125.PremiumPrefManager>(
      () => _i125.PremiumPrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i947.ReminderPrefManager>(
      () => _i947.ReminderPrefManager(gh<_i352.SharedPrefsManager>()));
  gh.singleton<_i495.ReviewService>(() => _i495.ReviewService(
        gh<_i553.InAppReview>(),
        gh<_i630.ReviewPrefManager>(),
      ));
  gh.singleton<_i47.MovieSaverBloc>(() => _i47.MovieSaverBloc(
        gh<_i72.IMovieRepo>(),
        gh<_i661.MoviePrefManager>(),
      ));
  gh.singleton<_i1013.PurchaseActorBloc>(() => _i1013.PurchaseActorBloc(
        gh<_i5.IPurchaseActionRepo>(),
        gh<_i495.ReviewService>(),
      ));
  gh.singleton<_i277.PremiumCheckerBloc>(() => _i277.PremiumCheckerBloc(
        gh<_i125.PremiumPrefManager>(),
        gh<_i5.IPurchaseActionRepo>(),
      ));
  gh.singleton<_i845.ReminderFunctions>(() => _i845.ReminderFunctions(
        gh<_i947.ReminderPrefManager>(),
        gh<_i706.Uuid>(),
      ));
  gh.singleton<_i808.FirstVisitCubit>(
      () => _i808.FirstVisitCubit(gh<_i657.FisrtVisitPrefManager>()));
  gh.singleton<_i561.IMovieAiRec>(() => _i691.MovieAiRecImpl(
        gh<_i914.GptMovieRecImpl>(),
        gh<_i71.TmdbSearchService>(),
        gh<_i1053.MovieAiRecPrefManager>(),
      ));
  gh.factory<_i501.MovieAiRecBloc>(() => _i501.MovieAiRecBloc(
        gh<_i561.IMovieAiRec>(),
        gh<_i1053.MovieAiRecPrefManager>(),
      ));
  return getIt;
}

class _$AppInjectableModule extends _i756.AppInjectableModule {}
