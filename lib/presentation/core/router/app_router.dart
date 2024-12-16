import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: InitialRoute.page, initial: true),
        CustomRoute(
          page: IntroRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: OnboardingRoute.page),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.noTransition,
          page: BaseRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: DiscoverRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: MovieDetailsRoute.page),
        AutoRoute(page: MovieOverviewRoute.page),
        AutoRoute(page: FavoriteMoviesChooserRoute.page),
      ];
}
