import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Text(
                'Witaj w LocAdvisor! Co chcesz zrobić?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 36),
              ElevatedButton.icon(
                onPressed: () => context.pushRoute(ActivitiesRoute()),
                icon: FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: context.onPrimary,
                ),
                label: const Text('Znajdź aktywności'),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => context.pushRoute(AccommodationsSearchRoute()),
                icon: FaIcon(
                  FontAwesomeIcons.house,
                  color: context.onPrimary,
                ),
                label: const Text('Znajdź zakwaterowanie'),
              ),
              const Spacer(),
              TextButton(
                onPressed: () async =>
                    await context.replaceRoute(SignInRoute()),
                child: const Text(
                  'Masz już konto? Zaloguj się',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
