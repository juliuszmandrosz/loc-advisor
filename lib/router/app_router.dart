import 'package:auto_route/auto_route.dart';
import 'package:loc_advisor/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: ActivitiesSearchRoute.page),
        AutoRoute(page: ActivityRecommendationsRoute.page),
        AutoRoute(page: AccommodationsSearchRoute.page),
        AutoRoute(page: AccommodationRecommendationsRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: DiscoverRoute.page),
            AutoRoute(page: RecommendationsRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
