import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/activities_core/infrastructure/activity_dto.dart';
import 'package:loc_advisor/converters/firebase_timestamp_json_converter.dart';
import 'package:loc_advisor/utils/convert_dynamic_to_map_string_dynamic.dart';

part 'activity_recommendations_dto.freezed.dart';
part 'activity_recommendations_dto.g.dart';

@freezed
class ActivityRecommendationsDto with _$ActivityRecommendationsDto {
  const ActivityRecommendationsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ActivityRecommendationsDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required List<ActivityDto> activities,
    required String destination,
    required String additionalNotes,
    required String requestId,
    String? userId,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _ActivityRecommendationsDto;

  factory ActivityRecommendationsDto.fromJson(Map<String, dynamic> json) =>
      _$ActivityRecommendationsDtoFromJson(json);

  factory ActivityRecommendationsDto.fromFirebase(
    DocumentSnapshot documentSnapshot,
  ) {
    return ActivityRecommendationsDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory ActivityRecommendationsDto.fromApi(dynamic data) {
    return ActivityRecommendationsDto.fromJson(
      convertDynamicToMapStringDynamic(data),
    ).copyWith(id: data['id']);
  }

  ActivityRecommendations toDomain() {
    return ActivityRecommendations(
      id: id!,
      destination: destination,
      additionalNotes: additionalNotes,
      activities: activities.map((r) => r.toDomain()).toList(),
    );
  }
}
