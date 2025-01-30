import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart';
import 'package:loc_advisor/app/recommendations/widgets/accommodation_list_item.dart';
import 'package:loc_advisor/app/recommendations/widgets/infinite_list.dart';
import 'package:loc_advisor/app/recommendations/widgets/no_recommendations_info.dart';
import 'package:loc_advisor/app/recommendations/widgets/recommendations_failure_info.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';

class AccommodationListPage extends HookWidget {
  const AccommodationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final destination =
          context.read<RecommendationsCubit>().state.destination;
      context
          .read<AccommodationListBloc>()
          .add(AccommodationListEvent.fetched(destination: destination));
      return null;
    }, const []);

    return Column(
      children: [
        BlocConsumer<AccommodationListBloc, AccommodationListState>(
          listenWhen: (previous, current) =>
              previous.deleteStatus != current.deleteStatus,
          listener: (context, state) {
            switch (state.deleteStatus) {
              case StateStatus.initial:
              case StateStatus.loading:
                context.unfocus();
                context.loaderOverlay.show();
              case StateStatus.failure:
                context.loaderOverlay.hide();
                context.showSnackbarMessage(
                  'Wystąpił błąd, proszę spróbować ponownie',
                );
              case StateStatus.success:
                context.loaderOverlay.hide();
                context.showSnackbarMessage('Usunięto rekomendację');
            }
          },
          builder: (context, state) {
            switch (state.getAccommodationsStatus) {
              case StateStatus.success:
                return state.recommendations.isEmpty
                    ? Expanded(
                        child: NoRecommendationsInfo(
                          onRefreshed: _refresh,
                        ),
                      )
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => _refresh(context),
                          child: InfiniteList(
                            itemCount: state.recommendations.length,
                            hasError: state.nextPageStatus.isFailure,
                            isLoading: state.nextPageStatus.isLoading,
                            hasReachedMax: state.hasReachedMax,
                            onFetchData: () => context
                                .read<AccommodationListBloc>()
                                .add(const AccommodationListEvent
                                    .nextPageFetched()),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 12),
                            itemBuilder: (_, i) => AccommodationListItem(
                              recommendation: state.recommendations[i],
                            ),
                          ),
                        ),
                      );
              case StateStatus.loading:
                return Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              case StateStatus.initial:
                return const SizedBox.shrink();
              case StateStatus.failure:
                return Expanded(
                  child: RecommendationsFailureInfo(
                    retryCallback: () => _refresh(context),
                  ),
                );
            }
          },
        ),
      ],
    );
  }

  Future<void> _refresh(BuildContext context) async {
    context
        .read<AccommodationListBloc>()
        .add(const AccommodationListEvent.fetched());
  }
}
