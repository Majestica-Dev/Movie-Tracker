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
import 'package:injectable/injectable.dart' as _i526;

import '../../application/movie/saver/movie_saver_bloc.dart' as _i47;
import '../../application/movie/search/movie_search_bloc.dart' as _i1024;
import '../../application/movie/watcher/movie_watcher_bloc.dart' as _i756;
import '../../domain/movie/repositories/i_ai_movie_rec.dart' as _i627;
import '../../domain/movie/repositories/i_movie_repo.dart' as _i72;
import '../../domain/movie/repositories/i_movie_search_repo.dart' as _i1069;
import '../../infrastructure/core/app_injectable_module.dart' as _i756;
import '../../infrastructure/core/local_database/drift_database.dart' as _i841;
import '../../infrastructure/movie/ai_rec/ai_movie_rec_impl.dart' as _i859;
import '../../infrastructure/movie/ai_rec/gpt_movie_rec_impl.dart' as _i914;
import '../../infrastructure/movie/movie_repo_impl.dart' as _i338;
import '../../infrastructure/movie/search/movie_search_repo_impl.dart' as _i437;
import '../../infrastructure/movie/search/tmdb/tmdb_search_service.dart'
    as _i71;
import '../../presentation/core/router/app_router.dart' as _i300;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  gh.singleton<_i841.AppDriftDatabase>(() => _i841.AppDriftDatabase());
  gh.singleton<_i300.AppRouter>(() => _i300.AppRouter());
  gh.lazySingleton<_i361.Dio>(() => appInjectableModule.dio);
  gh.lazySingleton<_i1054.OpenAI>(() => appInjectableModule.openAI);
  gh.singleton<_i71.TmdbSearchService>(
      () => _i71.TmdbSearchService(dio: gh<_i361.Dio>()));
  gh.singleton<_i627.IAiMovieRec>(
      () => _i859.AiMovieRecImpl(gh<_i1054.OpenAI>()));
  gh.singleton<_i72.IMovieRepo>(
      () => _i338.MovieRepoImpl(gh<_i841.AppDriftDatabase>()));
  gh.singleton<_i756.MovieWatcherBloc>(
      () => _i756.MovieWatcherBloc(gh<_i72.IMovieRepo>()));
  gh.singleton<_i914.GptMovieRecImpl>(
      () => _i914.GptMovieRecImpl(openAI: gh<_i1054.OpenAI>()));
  gh.singleton<_i1069.IMovieSearchRepo>(
      () => _i437.MovieSearchRepoImpl(gh<_i71.TmdbSearchService>()));
  gh.singleton<_i47.MovieSaverBloc>(
      () => _i47.MovieSaverBloc(gh<_i72.IMovieRepo>()));
  gh.factory<_i1024.MovieSearchBloc>(
      () => _i1024.MovieSearchBloc(gh<_i1069.IMovieSearchRepo>()));
  return getIt;
}

class _$AppInjectableModule extends _i756.AppInjectableModule {}
