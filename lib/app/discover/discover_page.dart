import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/discover/widgets/discover_square_tile.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_gradient_background_page.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LocAdvisorGradientBackgroundPage(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cześć, dobrze Cię widzieć!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: context.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Co chcesz zrobić?',
                style: TextStyle(
                  fontSize: 18,
                  color: context.primary,
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
                    onTap: () => context.pushRoute(ActivitiesSearchRoute()),
                  ),
                  DiscoverSquareTile(
                    icon: FontAwesomeIcons.house,
                    label: 'Znajdź zakwaterowanie',
                    onTap: () => context.pushRoute(AccommodationsSearchRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
