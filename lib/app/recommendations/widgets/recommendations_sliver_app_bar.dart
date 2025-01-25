import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/recommendation_tab.dart';
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart';
import 'package:loc_advisor/app/recommendations/widgets/recommendations_search_field.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_gradient_background_page.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class RecommendationsSliverAppBar extends StatelessWidget {
  final bool innerBoxIsScrolled;

  const RecommendationsSliverAppBar({
    required this.innerBoxIsScrolled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendationsCubit, RecommendationsState>(
      listener: (context, state) {
        DefaultTabController.of(context).animateTo(state.selectedTab.index);
      },
      builder: (context, state) {
        final selectedTab = state.selectedTab;
        return SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 140,
          forceElevated: innerBoxIsScrolled,
          backgroundColor: context.background,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: LocAdvisorGradientBackgroundPage(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    RecommendationsSearchField(
                      hintText: 'Wpisz lokalizację (np. Madryt)',
                      text: state.destination,
                      onSubmit: (destination) async {
                        context
                            .read<RecommendationsCubit>()
                            .applyDestination(destination);
                        switch (selectedTab) {
                          case RecommendationTab.activities:
                            // context
                            // .read<EventsBloc>()
                            // .add(EventsEvent.queryChanged(query));
                            break;
                          case RecommendationTab.accommodations:
                            context
                                .read<AccommodationListBloc>()
                                .add(AccommodationListEvent.destinationChanged(
                                  destination,
                                ));
                            break;
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(bottom: 12),
                  tabAlignment: TabAlignment.start,
                  labelColor: context.secondary,
                  labelStyle: context.titleSmall,
                  unselectedLabelColor: context.secondary.withOpacity(0.6),
                  indicatorColor: context.secondary,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: context.secondary,
                        width: 1,
                      ),
                    ),
                  ),
                  onTap: (i) => context.read<RecommendationsCubit>().changeTab(
                        RecommendationTab.values.elementAt(i),
                      ),
                  tabs: [
                    const Tab(
                      child: Text(
                        'Aktywności',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const Tab(
                      child: Text(
                        'Zakwaterowania',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
