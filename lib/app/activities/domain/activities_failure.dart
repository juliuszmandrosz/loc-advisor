import 'package:freezed_annotation/freezed_annotation.dart';

part 'activities_failure.freezed.dart';

@freezed
class ActivitiesFailure with _$ActivitiesFailure {
  const factory ActivitiesFailure.unexpected() = _Unexpected;
}

extension ActivitiesFailureX on ActivitiesFailure {
  String get message => when(unexpected: () => 'Server error');
}
