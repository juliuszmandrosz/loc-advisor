// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:loc_advisor/auth/splash_page.dart' as _i2;
import 'package:loc_advisor/generate_recommendations/generate_recommendations_page.dart'
    as _i1;

/// generated route for
/// [_i1.GenerateRecommendationsPage]
class GenerateRecommendationsRoute extends _i3.PageRouteInfo<void> {
  const GenerateRecommendationsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          GenerateRecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateRecommendationsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.GenerateRecommendationsPage();
    },
  );
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SplashPage();
    },
  );
}
