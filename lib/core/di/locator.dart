import 'package:get_it/get_it.dart';
import 'package:movie_tracker/presentation/core/router/app_router.dart';

abstract final class Locator {
  static final GetIt _getIt = GetIt.I;

  static AppRouter get appRouter => _getIt<AppRouter>();
}
