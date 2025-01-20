import 'package:auto_route/auto_route.dart';
import 'package:loc_advisor/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ActivitiesRoute.page),
        AutoRoute(page: AccommodationsSearchRoute.page),
        AutoRoute(page: AccommodationRecommendationsRoute.page),
      ];
}
