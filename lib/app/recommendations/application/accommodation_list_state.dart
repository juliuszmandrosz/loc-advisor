part of 'accommodation_list_bloc.dart';

@freezed
class AccommodationListState with _$AccommodationListState {
  const factory AccommodationListState({
    required StateStatus getAccommodationsStatus,
    required StateStatus nextPageStatus,
    required List<AccommodationRecommendations> recommendations,
    required bool hasReachedMax,
    required String destination,
  }) = _AccommodationListState;

  factory AccommodationListState.initial() => AccommodationListState(
        getAccommodationsStatus: StateStatus.initial,
        nextPageStatus: StateStatus.initial,
        hasReachedMax: false,
        recommendations: [],
        destination: '',
      );
}
