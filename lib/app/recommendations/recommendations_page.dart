import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/recommendations/accommodation_list_page.dart';
import 'package:loc_advisor/app/recommendations/activity_list_page.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart';
import 'package:loc_advisor/app/recommendations/widgets/recommendations_sliver_app_bar.dart';
import 'package:loc_advisor/injection_container/injectable.dart';

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
              body: const Padding(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    AccommodationListPage(),
                    ActivityListPage(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
