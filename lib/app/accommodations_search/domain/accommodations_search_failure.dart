import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodations_search_failure.freezed.dart';

@freezed
class AccommodationsSearchFailure with _$AccommodationsSearchFailure {
  const factory AccommodationsSearchFailure.unexpected() = _Unexpected;
}

extension AccommodationsSearchFailureX on AccommodationsSearchFailure {
  String get message =>
      when(unexpected: () => 'Wystąpił błąd, proszę spróbować ponownie');
}
