import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation_request_entity.freezed.dart';

@freezed
class AccommodationRequest with _$AccommodationRequest {
  const factory AccommodationRequest({
    required String destination,
    required List<String> locationPreferences,
    required String budgetOption,
    required String atmosphereOption,
    required String additionalNotes,
  }) = _AccommodationRequest;
}
