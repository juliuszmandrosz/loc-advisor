import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation_entity.freezed.dart';

@freezed
class Accommodation with _$Accommodation {
  const factory Accommodation({
    required String placeName,
    required String description,
    required String localVibe,
    required String safetyTips,
    required String transportTips,
    required String budgetTips,
  }) = _Accommodation;
}
