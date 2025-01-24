import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_entity.dart';

part 'accommodation_recommendations_entity.freezed.dart';

@freezed
class AccommodationRecommendations with _$AccommodationRecommendations {
  const factory AccommodationRecommendations({
    required String id,
    required String destination,
    required List<Accommodation> locations,
    required String additionalNotes,
  }) = _AccommodationRecommendations;
}
