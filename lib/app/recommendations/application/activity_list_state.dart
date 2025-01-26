part of 'activity_list_bloc.dart';

@freezed
class ActivityListState with _$ActivityListState {
  const factory ActivityListState({
    required StateStatus getActivitiesStatus,
    required StateStatus nextPageStatus,
    required List<ActivityRecommendations> activities,
    required bool hasReachedMax,
    required String destination,
  }) = _ActivityListState;

  factory ActivityListState.initial() => ActivityListState(
        getActivitiesStatus: StateStatus.initial,
        nextPageStatus: StateStatus.initial,
        hasReachedMax: false,
        activities: [],
        destination: '',
      );
}
