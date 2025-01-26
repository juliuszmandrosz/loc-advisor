import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendations_failure.freezed.dart';

@freezed
class RecommendationsFailure with _$RecommendationsFailure {
  const factory RecommendationsFailure.unexpected() = _Unexpected;
}

extension RecommendationsFailureX on RecommendationsFailure {
  String get message =>
      when(unexpected: () => 'Wystąpił błąd, proszę spróbować ponownie');
}
