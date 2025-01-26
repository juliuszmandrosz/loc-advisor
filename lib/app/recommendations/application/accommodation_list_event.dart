part of 'accommodation_list_bloc.dart';

@freezed
class AccommodationListEvent with _$AccommodationListEvent {
  const factory AccommodationListEvent.fetched({
    @Default('') String destination,
  }) = _Fetched;

  const factory AccommodationListEvent.destinationChanged(String destination) =
      _DestinationChanged;

  const factory AccommodationListEvent.nextPageFetched() = _NextPageFetched;

  const factory AccommodationListEvent.deleted(
      AccommodationRecommendations accommodation) = _Deleted;
}
