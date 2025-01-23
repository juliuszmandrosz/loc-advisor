// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i13;
import 'package:loc_advisor/app/accommodations/accommodation_recommendations_page.dart'
    as _i1;
import 'package:loc_advisor/app/accommodations/accommodations_search_page.dart'
    as _i2;
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart'
    as _i12;
import 'package:loc_advisor/app/activities/activities_page.dart' as _i3;
import 'package:loc_advisor/app/auth/forgot_password_page.dart' as _i4;
import 'package:loc_advisor/app/auth/sign_in_page.dart' as _i8;
import 'package:loc_advisor/app/auth/sign_up_page.dart' as _i9;
import 'package:loc_advisor/app/auth/splash_page.dart' as _i10;
import 'package:loc_advisor/app/generate_recommendations/generate_recommendations_page.dart'
    as _i5;
import 'package:loc_advisor/app/home/home_page.dart' as _i6;
import 'package:loc_advisor/app/onboarding/onboarding_page.dart' as _i7;

/// generated route for
/// [_i1.AccommodationRecommendationsPage]
class AccommodationRecommendationsRoute
    extends _i11.PageRouteInfo<AccommodationRecommendationsRouteArgs> {
  AccommodationRecommendationsRoute({
    required _i12.AccommodationRecommendations recommendations,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AccommodationRecommendationsRoute.name,
          args: AccommodationRecommendationsRouteArgs(
            recommendations: recommendations,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AccommodationRecommendationsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
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

  final _i12.AccommodationRecommendations recommendations;

  final _i13.Key? key;

  @override
  String toString() {
    return 'AccommodationRecommendationsRouteArgs{recommendations: $recommendations, key: $key}';
  }
}

/// generated route for
/// [_i2.AccommodationsSearchPage]
class AccommodationsSearchRoute extends _i11.PageRouteInfo<void> {
  const AccommodationsSearchRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AccommodationsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccommodationsSearchRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccommodationsSearchPage();
    },
  );
}

/// generated route for
/// [_i3.ActivitiesPage]
class ActivitiesRoute extends _i11.PageRouteInfo<void> {
  const ActivitiesRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivitiesRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.ActivitiesPage();
    },
  );
}

/// generated route for
/// [_i4.ForgotPasswordPage]
class ForgotPasswordRoute extends _i11.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    required String email,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i4.ForgotPasswordPage(
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

  final _i13.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [_i5.GenerateRecommendationsPage]
class GenerateRecommendationsRoute extends _i11.PageRouteInfo<void> {
  const GenerateRecommendationsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GenerateRecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateRecommendationsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.GenerateRecommendationsPage();
    },
  );
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomePage();
    },
  );
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i11.PageRouteInfo<void> {
  const OnboardingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i8.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    String email = '',
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignInRouteArgs>(orElse: () => const SignInRouteArgs());
      return _i8.SignInPage(
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

  final _i13.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [_i9.SignUpPage]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SignUpPage();
    },
  );
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashPage();
    },
  );
}
