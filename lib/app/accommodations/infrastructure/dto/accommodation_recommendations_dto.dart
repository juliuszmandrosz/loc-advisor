import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/infrastructure/dto/accommodation_dto.dart';
import 'package:loc_advisor/converters/firebase_timestamp_json_converter.dart';
import 'package:loc_advisor/utils/convert_dynamic_to_map_string_dynamic.dart';

part 'accommodation_recommendations_dto.freezed.dart';
part 'accommodation_recommendations_dto.g.dart';

@freezed
class AccommodationRecommendationsDto with _$AccommodationRecommendationsDto {
  const AccommodationRecommendationsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory AccommodationRecommendationsDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required List<AccommodationDto> locations,
    required String destination,
    required String additionalNotes,
    required String requestId,
    String? userId,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _AccommodationRecommendationsDto;

  factory AccommodationRecommendationsDto.fromJson(Map<String, dynamic> json) =>
      _$AccommodationRecommendationsDtoFromJson(json);

  factory AccommodationRecommendationsDto.fromFirebase(
    DocumentSnapshot documentSnapshot,
  ) {
    return AccommodationRecommendationsDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory AccommodationRecommendationsDto.fromApi(dynamic data) {
    return AccommodationRecommendationsDto.fromJson(
      convertDynamicToMapStringDynamic(data),
    ).copyWith(id: data['id']);
  }

  AccommodationRecommendations toDomain() {
    return AccommodationRecommendations(
      id: id!,
      destination: destination,
      additionalNotes: additionalNotes,
      locations: locations.map((r) => r.toDomain()).toList(),
    );
  }
}
