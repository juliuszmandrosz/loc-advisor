import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';
import 'package:loc_advisor/converters/firebase_timestamp_json_converter.dart';

part 'accommodation_request.dto.freezed.dart';
part 'accommodation_request.dto.g.dart';

@freezed
class AccommodationRequestDto with _$AccommodationRequestDto {
  const AccommodationRequestDto._();

  @JsonSerializable()
  const factory AccommodationRequestDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String destination,
    required List<String> locationPreferences,
    required String budgetOption,
    required String atmosphereOption,
    required String additionalNotes,
    String? userId,
    @FirebaseTimestampJsonConverter() DateTime? createdAt,
  }) = _AccommodationRequestDto;

  factory AccommodationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AccommodationRequestDtoFromJson(json);

  factory AccommodationRequestDto.fromFirebase(
      DocumentSnapshot documentSnapshot) {
    return AccommodationRequestDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory AccommodationRequestDto.fromDomain(AccommodationRequest request) {
    return AccommodationRequestDto(
      destination: request.destination,
      locationPreferences: request.locationPreferences,
      budgetOption: request.budgetOption,
      additionalNotes: request.additionalNotes,
      atmosphereOption: request.atmosphereOption,
    );
  }

  AccommodationRequest toDomain() {
    return AccommodationRequest(
      additionalNotes: additionalNotes,
      atmosphereOption: atmosphereOption,
      budgetOption: budgetOption,
      destination: destination,
      locationPreferences: locationPreferences,
    );
  }
}
