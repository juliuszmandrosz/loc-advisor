import 'package:freezed_annotation/freezed_annotation.dart';

part 'activities_search_failure.freezed.dart';

@freezed
class ActivitiesSearchFailure with _$ActivitiesSearchFailure {
  const factory ActivitiesSearchFailure.unexpected() = _Unexpected;
}

extension ActivitiesSearchFailureX on ActivitiesSearchFailure {
  String get message => when(unexpected: () => 'Server error');
}
