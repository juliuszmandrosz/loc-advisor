part of 'activity_list_bloc.dart';

@freezed
class ActivityListEvent with _$ActivityListEvent {
  const factory ActivityListEvent.fetched({
    @Default('') String destination,
  }) = _Fetched;

  const factory ActivityListEvent.destinationChanged(String destination) =
      _DestinationChanged;

  const factory ActivityListEvent.nextPageFetched() = _NextPageFetched;

  const factory ActivityListEvent.deleted(ActivityRecommendations activity) =
      _Deleted;
}
