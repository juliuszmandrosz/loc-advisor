import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/auth/application/auth_bloc.dart';
import 'package:loc_advisor/router/app_router.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (ctx, state) {
        state.map(
          initial: (_) {},
          authenticated: (state) async =>
              await context.replaceRoute(const HomeRoute()),
          unauthenticated: (_) async =>
              await context.replaceRoute(OnboardingRoute()),
        );
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
