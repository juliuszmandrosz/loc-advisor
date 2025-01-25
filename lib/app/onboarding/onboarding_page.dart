import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/discover/widgets/discover_square_tile.dart';
import 'package:loc_advisor/router/app_router.gr.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Witaj w LocAdvisor!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Co chcesz zrobić?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 36),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                    childAspectRatio: 1,
                  ),
                  children: [
                    DiscoverSquareTile(
                      icon: FontAwesomeIcons.locationDot,
                      label: 'Znajdź aktywności',
                      onTap: () => context.pushRoute(ActivitiesRoute()),
                    ),
                    DiscoverSquareTile(
                      icon: FontAwesomeIcons.house,
                      label: 'Znajdź zakwaterowanie',
                      onTap: () =>
                          context.pushRoute(AccommodationsSearchRoute()),
                    ),
                  ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
