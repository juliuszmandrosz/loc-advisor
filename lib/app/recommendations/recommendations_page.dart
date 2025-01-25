import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/recommendations/accommodation_list_page.dart';
import 'package:loc_advisor/app/recommendations/activity_list_page.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart';
import 'package:loc_advisor/app/recommendations/widgets/recommendations_sliver_app_bar.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RecommendationsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AccommodationListBloc>(),
        ),
      ],
      child: BlocBuilder<RecommendationsCubit, RecommendationsState>(
        builder: (context, state) {
          return DefaultTabController(
            initialIndex: state.selectedTab.index,
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) => [
                RecommendationsSliverAppBar(
                  innerBoxIsScrolled: innerBoxIsScrolled,
                ),
              ],
              body: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.background,
                      Colors.teal.shade100,
                      context.background,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ActivityListPage(),
                      AccommodationListPage(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
