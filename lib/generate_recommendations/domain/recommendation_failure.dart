import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_failure.freezed.dart';

@freezed
class RecommendationFailure with _$RecommendationFailure {
  const factory RecommendationFailure.unexpected() = _Unexpected;
}

extension RecommendationFailureX on RecommendationFailure {
  String get message => when(
    unexpected: () => 'Server error'
  );
}
