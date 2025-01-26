import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_entity.dart';

part 'activity_recommendations_entity.freezed.dart';

@freezed
class ActivityRecommendations with _$ActivityRecommendations {
  const factory ActivityRecommendations({
    required String id,
    required String destination,
    required List<Activity> activities,
    required String additionalNotes,
  }) = _ActivityRecommendations;
}
