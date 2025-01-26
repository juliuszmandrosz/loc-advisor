import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/domain/recommendations_facade.dart';
import 'package:loc_advisor/app/transformers/throttle_droppable.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'activity_list_bloc.freezed.dart';
part 'activity_list_event.dart';
part 'activity_list_state.dart';

const _pageSize = 15;

@injectable
class ActivityListBloc extends Bloc<ActivityListEvent, ActivityListState> {
  final RecommendationsFacade _recommendationsFacade;

  ActivityListBloc(this._recommendationsFacade)
      : super(ActivityListState.initial()) {
    on<_Fetched>(_onFetched);
    on<_DestinationChanged>(_onDestinationChanged);
    on<_NextPageFetched>(
      _onNextPageFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onFetched(
    _Fetched event,
    Emitter<ActivityListState> emit,
  ) async {
    emit(
      state.copyWith(
        getActivitiesStatus: StateStatus.loading,
        destination: event.destination.isNotEmpty
            ? event.destination
            : state.destination,
      ),
    );

    final result = await _recommendationsFacade.fetchActivities(
      state.destination,
      pageSize: _pageSize,
    );

    result.fold(
      (_) => emit(
        state.copyWith(getActivitiesStatus: StateStatus.failure),
      ),
      (result) => emit(
        state.copyWith(
          getActivitiesStatus: StateStatus.success,
          activities: result,
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onDestinationChanged(
    _DestinationChanged event,
    Emitter<ActivityListState> emit,
  ) async {
    emit(
      state.copyWith(
        getActivitiesStatus: StateStatus.loading,
        destination: event.destination,
      ),
    );

    final result = await _recommendationsFacade.fetchActivities(
      event.destination,
      pageSize: _pageSize,
    );

    result.fold(
      (_) => emit(
        state.copyWith(getActivitiesStatus: StateStatus.failure),
      ),
      (result) => emit(
        state.copyWith(
          getActivitiesStatus: StateStatus.success,
          activities: result,
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<ActivityListState> emit,
  ) async {
    if (state.hasReachedMax || state.activities.isEmpty) return;

    emit(state.copyWith(nextPageStatus: StateStatus.loading));

    final result = await _recommendationsFacade.fetchActivities(
      state.destination,
      pageSize: _pageSize,
      lastRecommendation: state.activities.last,
    );

    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: StateStatus.failure)),
      (result) => emit(
        state.copyWith(
          nextPageStatus: StateStatus.success,
          activities: [...state.activities, ...result],
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }
}
