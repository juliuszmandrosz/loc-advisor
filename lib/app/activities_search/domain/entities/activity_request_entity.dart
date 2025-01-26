import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_request_entity.freezed.dart';

@freezed
class ActivityRequest with _$ActivityRequest {
  const factory ActivityRequest({
    required String destination,
    required String dateOption,
    required List<String> activityPreferences,
    required String budgetOption,
    required String atmosphereOption,
    required String additionalNotes,
  }) = _ActivityRequest;
}
