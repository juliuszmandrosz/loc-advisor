import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/auth/application/auth_bloc.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_gradient_background_page.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.user.isSome() && current.user.isNone() ||
          previous.status != current.status,
      listener: (context, state) {
        switch (state.status) {
          case StateStatus.initial:
          case StateStatus.loading:
            context.loaderOverlay.show();
          case StateStatus.failure:
            context.showSnackbarMessage(
              'Wystąpił błąd, proszę spróbować ponownie',
            );
            context.loaderOverlay.hide();
          case StateStatus.success:
            context.loaderOverlay.hide();
        }

        state.user.fold(
          () async => await AutoRouter.of(context).replaceAll([SignInRoute()]),
          (_) => {},
        );
      },
      builder: (context, state) {
        return state.user.fold(
          () => const SizedBox.shrink(),
          (user) => LocAdvisorGradientBackgroundPage(
            child: Center(
              child: Card(
                color: Colors.teal.shade50,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.teal.shade200,
                        child: Text(
                          user.email[0].toUpperCase(),
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Zalogowany jako:',
                        style: context.labelLarge.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        user.email,
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () =>
                            context.read<AuthBloc>().add(AuthEvent.signedOut()),
                        label: const Text('Wyloguj się'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 48),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
