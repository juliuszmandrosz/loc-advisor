import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      animationDuration: const Duration(milliseconds: 0),
      appBarBuilder: (_, __) => AppBar(
        backgroundColor: Colors.teal.shade200,
        toolbarHeight: kToolbarHeight + MediaQuery.of(context).padding.top,
        title: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Text(
            'LocAdvisor',
            style: context.titleLarge.copyWith(
              fontWeight: FontWeight.bold,
              color: context.onPrimaryContainer,
            ),
          ),
        ),
        centerTitle: true,
      ),
      routes: const [
        DiscoverRoute(),
        RecommendationsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          backgroundColor: context.background,
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.explore_outlined),
              label: 'Odkrywaj',
            ),
            NavigationDestination(
              icon: const Icon(Icons.bookmark_outline),
              label: 'Rekomendacje',
            ),
            NavigationDestination(
              icon: const Icon(Icons.person_outline),
              label: 'Profil',
            ),
          ],
        );
      },
    );
  }
}
