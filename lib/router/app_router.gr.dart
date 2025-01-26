// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i16;
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart'
    as _i15;
import 'package:loc_advisor/app/accommodations_search/accommodation_recommendations_page.dart'
    as _i1;
import 'package:loc_advisor/app/accommodations_search/accommodations_search_page.dart'
    as _i2;
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart'
    as _i17;
import 'package:loc_advisor/app/activities_search/activities_search_page.dart'
    as _i3;
import 'package:loc_advisor/app/activities_search/activity_recommendations_page.dart'
    as _i4;
import 'package:loc_advisor/app/auth/forgot_password_page.dart' as _i6;
import 'package:loc_advisor/app/auth/sign_in_page.dart' as _i11;
import 'package:loc_advisor/app/auth/sign_up_page.dart' as _i12;
import 'package:loc_advisor/app/auth/splash_page.dart' as _i13;
import 'package:loc_advisor/app/discover/discover_page.dart' as _i5;
import 'package:loc_advisor/app/home/home_page.dart' as _i7;
import 'package:loc_advisor/app/onboarding/onboarding_page.dart' as _i8;
import 'package:loc_advisor/app/profile/profile_page.dart' as _i9;
import 'package:loc_advisor/app/recommendations/recommendations_page.dart'
    as _i10;
import 'package:loc_advisor/enums/recommendation_type.dart' as _i18;

/// generated route for
/// [_i1.AccommodationRecommendationsPage]
class AccommodationRecommendationsRoute
    extends _i14.PageRouteInfo<AccommodationRecommendationsRouteArgs> {
  AccommodationRecommendationsRoute({
    required _i15.AccommodationRecommendations recommendations,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AccommodationRecommendationsRoute.name,
          args: AccommodationRecommendationsRouteArgs(
            recommendations: recommendations,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AccommodationRecommendationsRoute';

  static _i14.PageInfo page = _i14.PageInfo(
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

  final _i15.AccommodationRecommendations recommendations;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AccommodationRecommendationsRouteArgs{recommendations: $recommendations, key: $key}';
  }
}

/// generated route for
/// [_i2.AccommodationsSearchPage]
class AccommodationsSearchRoute extends _i14.PageRouteInfo<void> {
  const AccommodationsSearchRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AccommodationsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccommodationsSearchRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccommodationsSearchPage();
    },
  );
}

/// generated route for
/// [_i3.ActivitiesSearchPage]
class ActivitiesSearchRoute extends _i14.PageRouteInfo<void> {
  const ActivitiesSearchRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ActivitiesSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivitiesSearchRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i3.ActivitiesSearchPage();
    },
  );
}

/// generated route for
/// [_i4.ActivityRecommendationsPage]
class ActivityRecommendationsRoute
    extends _i14.PageRouteInfo<ActivityRecommendationsRouteArgs> {
  ActivityRecommendationsRoute({
    required _i17.ActivityRecommendations recommendations,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ActivityRecommendationsRoute.name,
          args: ActivityRecommendationsRouteArgs(
            recommendations: recommendations,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ActivityRecommendationsRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ActivityRecommendationsRouteArgs>();
      return _i4.ActivityRecommendationsPage(
        recommendations: args.recommendations,
        key: args.key,
      );
    },
  );
}

class ActivityRecommendationsRouteArgs {
  const ActivityRecommendationsRouteArgs({
    required this.recommendations,
    this.key,
  });

  final _i17.ActivityRecommendations recommendations;

  final _i16.Key? key;

  @override
  String toString() {
    return 'ActivityRecommendationsRouteArgs{recommendations: $recommendations, key: $key}';
  }
}

/// generated route for
/// [_i5.DiscoverPage]
class DiscoverRoute extends _i14.PageRouteInfo<void> {
  const DiscoverRoute({List<_i14.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i5.DiscoverPage();
    },
  );
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i14.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    required String email,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i6.ForgotPasswordPage(
        email: args.email,
        key: args.key,
      );
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({
    required this.email,
    this.key,
  });

  final String email;

  final _i16.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomePage();
    },
  );
}

/// generated route for
/// [_i8.OnboardingPage]
class OnboardingRoute extends _i14.PageRouteInfo<void> {
  const OnboardingRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i8.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfilePage();
    },
  );
}

/// generated route for
/// [_i10.RecommendationsPage]
class RecommendationsRoute extends _i14.PageRouteInfo<void> {
  const RecommendationsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendationsRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i10.RecommendationsPage();
    },
  );
}

/// generated route for
/// [_i11.SignInPage]
class SignInRoute extends _i14.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    String email = '',
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignInRouteArgs>(orElse: () => const SignInRouteArgs());
      return _i11.SignInPage(
        email: args.email,
        key: args.key,
      );
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.email = '',
    this.key,
  });

  final String email;

  final _i16.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [_i12.SignUpPage]
class SignUpRoute extends _i14.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    String? recommendationId,
    _i18.RecommendationType? recommendationType,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            recommendationId: recommendationId,
            recommendationType: recommendationType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignUpRouteArgs>(orElse: () => const SignUpRouteArgs());
      return _i12.SignUpPage(
        recommendationId: args.recommendationId,
        recommendationType: args.recommendationType,
        key: args.key,
      );
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.recommendationId,
    this.recommendationType,
    this.key,
  });

  final String? recommendationId;

  final _i18.RecommendationType? recommendationType;

  final _i16.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{recommendationId: $recommendationId, recommendationType: $recommendationType, key: $key}';
  }
}

/// generated route for
/// [_i13.SplashPage]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashPage();
    },
  );
}
