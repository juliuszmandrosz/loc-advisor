import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_entity.dart';

part 'accommodation_dto.freezed.dart';
part 'accommodation_dto.g.dart';

@freezed
class AccommodationDto with _$AccommodationDto {
  const AccommodationDto._();

  @JsonSerializable()
  const factory AccommodationDto({
    required String placeName,
    required String description,
    required String localVibe,
    required String safetyTips,
    required String transportTips,
    required String budgetTips,
  }) = _AccommodationDto;

  factory AccommodationDto.fromJson(Map<String, dynamic> json) =>
      _$AccommodationDtoFromJson(json);

  factory AccommodationDto.fromApi(List<dynamic> json) {
    return AccommodationDto.fromJson(json as Map<String, dynamic>);
  }

  factory AccommodationDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return AccommodationDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  Accommodation toDomain() {
    return Accommodation(
      description: description,
      localVibe: localVibe,
      placeName: placeName,
      safetyTips: safetyTips,
      transportTips: transportTips,
      budgetTips: budgetTips,
    );
  }
}
