import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodations_failure.freezed.dart';

@freezed
class AccommodationsFailure with _$AccommodationsFailure {
  const factory AccommodationsFailure.unexpected() = _Unexpected;
}

extension AccommodationFailureX on AccommodationsFailure {
  String get message =>
      when(unexpected: () => 'Wystąpił błąd, proszę spróbować ponownie');
}
