import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String placeName,
    required String description,
    required String bestTimeToVisit,
    required String safetyTips,
    required String budgetTips,
    required String combinationTips,
  }) = _Activity;
}
