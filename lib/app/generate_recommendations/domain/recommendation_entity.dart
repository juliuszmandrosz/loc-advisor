import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_entity.freezed.dart';

@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    required String id,
    required String location,
    required String recommendation,
  }) = _Recommendation;
}