import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/activities_search/domain/entities/activity_request_entity.dart';
import 'package:loc_advisor/converters/firebase_timestamp_json_converter.dart';

part 'activity_request_dto.freezed.dart';
part 'activity_request_dto.g.dart';

@freezed
class ActivityRequestDto with _$ActivityRequestDto {
  const ActivityRequestDto._();

  @JsonSerializable()
  const factory ActivityRequestDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String destination,
    required List<String> activityPreferences,
    required String dateOption,
    required String budgetOption,
    required String atmosphereOption,
    required String additionalNotes,
    String? userId,
    @FirebaseTimestampJsonConverter() DateTime? createdAt,
  }) = _ActivityRequestDto;

  factory ActivityRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ActivityRequestDtoFromJson(json);

  factory ActivityRequestDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ActivityRequestDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory ActivityRequestDto.fromDomain(ActivityRequest request) {
    return ActivityRequestDto(
      destination: request.destination,
      activityPreferences: request.activityPreferences,
      dateOption: request.dateOption,
      budgetOption: request.budgetOption,
      additionalNotes: request.additionalNotes,
      atmosphereOption: request.atmosphereOption,
    );
  }

  ActivityRequest toDomain() {
    return ActivityRequest(
      destination: destination,
      activityPreferences: activityPreferences,
      dateOption: dateOption,
      budgetOption: budgetOption,
      additionalNotes: additionalNotes,
      atmosphereOption: atmosphereOption,
    );
  }
}
