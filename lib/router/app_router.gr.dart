// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:loc_advisor/app/accommodations/accommodation_recommendations_page.dart'
    as _i1;
import 'package:loc_advisor/app/accommodations/accommodations_search_page.dart'
    as _i2;
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart'
    as _i9;
import 'package:loc_advisor/app/activities/activities_page.dart' as _i3;
import 'package:loc_advisor/app/auth/splash_page.dart' as _i7;
import 'package:loc_advisor/app/generate_recommendations/generate_recommendations_page.dart'
    as _i4;
import 'package:loc_advisor/app/home/home_page.dart' as _i5;
import 'package:loc_advisor/app/onboarding/onboarding_page.dart' as _i6;

/// generated route for
/// [_i1.AccommodationRecommendationsPage]
class AccommodationRecommendationsRoute
    extends _i8.PageRouteInfo<AccommodationRecommendationsRouteArgs> {
  AccommodationRecommendationsRoute({
    required _i9.AccommodationRecommendations recommendations,
    _i10.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AccommodationRecommendationsRoute.name,
          args: AccommodationRecommendationsRouteArgs(
            recommendations: recommendations,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AccommodationRecommendationsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AccommodationRecommendationsRouteArgs>();
      return _i1.AccommodationRecommendationsPage(
        recommendations: args.recommendations,
        key: args.key,
      );
    },
  );
}

class AccommodationRecommendationsRouteArgs {
  const AccommodationRecommendationsRouteArgs({
    required this.recommendations,
    this.key,
  });

  final _i9.AccommodationRecommendations recommendations;

  final _i10.Key? key;

  @override
  String toString() {
    return 'AccommodationRecommendationsRouteArgs{recommendations: $recommendations, key: $key}';
  }
}

/// generated route for
/// [_i2.AccommodationsSearchPage]
class AccommodationsSearchRoute extends _i8.PageRouteInfo<void> {
  const AccommodationsSearchRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccommodationsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccommodationsSearchRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccommodationsSearchPage();
    },
  );
}

/// generated route for
/// [_i3.ActivitiesPage]
class ActivitiesRoute extends _i8.PageRouteInfo<void> {
  const ActivitiesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivitiesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ActivitiesPage();
    },
  );
}

/// generated route for
/// [_i4.GenerateRecommendationsPage]
class GenerateRecommendationsRoute extends _i8.PageRouteInfo<void> {
  const GenerateRecommendationsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          GenerateRecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateRecommendationsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.GenerateRecommendationsPage();
    },
  );
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashPage();
    },
  );
}
