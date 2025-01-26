import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/activity_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart';
import 'package:loc_advisor/app/recommendations/widgets/activity_list_item.dart';
import 'package:loc_advisor/app/recommendations/widgets/infinite_list.dart';
import 'package:loc_advisor/app/recommendations/widgets/no_recommendations_info.dart';
import 'package:loc_advisor/app/recommendations/widgets/recommendations_failure_info.dart';
import 'package:loc_advisor/enums/state_status.dart';

class ActivityListPage extends HookWidget {
  const ActivityListPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final destination =
          context.read<RecommendationsCubit>().state.destination;
      context
          .read<ActivityListBloc>()
          .add(ActivityListEvent.fetched(destination: destination));
      return null;
    }, const []);

    return Column(
      children: [
        BlocBuilder<ActivityListBloc, ActivityListState>(
          builder: (context, state) {
            switch (state.getActivitiesStatus) {
              case StateStatus.initial:
                return const SizedBox.shrink();

              case StateStatus.loading:
                return Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );

              case StateStatus.failure:
                return Expanded(
                  child: RecommendationsFailureInfo(
                    retryCallback: () => _refresh(context),
                  ),
                );

              case StateStatus.success:
                return state.activities.isEmpty
                    ? Expanded(
                        child: NoRecommendationsInfo(
                          onRefreshed: _refresh,
                        ),
                      )
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => _refresh(context),
                          child: InfiniteList(
                            itemCount: state.activities.length,
                            hasError: state.nextPageStatus.isFailure,
                            isLoading: state.nextPageStatus.isLoading,
                            hasReachedMax: state.hasReachedMax,
                            onFetchData: () => context
                                .read<AccommodationListBloc>()
                                .add(const AccommodationListEvent
                                    .nextPageFetched()),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 12),
                            itemBuilder: (_, i) => ActivityListItem(
                              recommendation: state.activities[i],
                            ),
                          ),
                        ),
                      );
            }
          },
        ),
      ],
    );
  }

  Future<void> _refresh(BuildContext context) async {
    context.read<ActivityListBloc>().add(const ActivityListEvent.fetched());
  }
}
