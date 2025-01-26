import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_entity.dart';

part 'activity_dto.freezed.dart';
part 'activity_dto.g.dart';

@freezed
class ActivityDto with _$ActivityDto {
  const ActivityDto._();

  @JsonSerializable()
  const factory ActivityDto({
    required String placeName,
    required String description,
    required String bestTimeToVisit,
    required String safetyTips,
    required String combinationTips,
    required String budgetTips,
  }) = _ActivityDto;

  factory ActivityDto.fromJson(Map<String, dynamic> json) =>
      _$ActivityDtoFromJson(json);

  factory ActivityDto.fromApi(List<dynamic> json) {
    return ActivityDto.fromJson(json as Map<String, dynamic>);
  }

  factory ActivityDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ActivityDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  Activity toDomain() {
    return Activity(
      bestTimeToVisit: bestTimeToVisit,
      combinationTips: combinationTips,
      description: description,
      placeName: placeName,
      safetyTips: safetyTips,
      budgetTips: budgetTips,
    );
  }
}
