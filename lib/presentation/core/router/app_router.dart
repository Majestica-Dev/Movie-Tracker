import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: HomeRoute.page, initial: true)];
}
