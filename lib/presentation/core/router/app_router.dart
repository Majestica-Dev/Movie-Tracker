import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          durationInMilliseconds: 0,
          page: BaseRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: DiscoverRoute.page),
            AutoRoute(page: SettingRoute.page),
          ],
        ),
        AutoRoute(page: MovieDetailsRoute.page),
        AutoRoute(page: MovieOverviewRoute.page)
      ];
}
