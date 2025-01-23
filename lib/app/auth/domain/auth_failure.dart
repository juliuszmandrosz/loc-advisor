import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unexpected() = _Unexpected;

  const factory AuthFailure.accountExists() = _AccountExists;

  const factory AuthFailure.invalidCredential() = _InvalidCredential;

  const factory AuthFailure.invalidEmail() = _InvalidEmail;

  const factory AuthFailure.userDisabled() = _UserDisabled;

  const factory AuthFailure.emailInUse() = _EmailInUse;

  const factory AuthFailure.weakPassword() = _WeakPassword;

  const factory AuthFailure.userNotFound() = _UserNotFound;

  const factory AuthFailure.wrongPassword() = _WrongPassword;

  const factory AuthFailure.deviceNotSupported() = _DeviceNotSupported;
}

extension AuthFailureX on AuthFailure {
  String get message => when(
        unexpected: () => 'Wystąpił błąd, proszę spróbować ponownie',
        accountExists: () => 'Konto istnieje',
        invalidCredential: () => 'Nieprawidłowe dane logowania',
        invalidEmail: () => 'Nieprawidłowe dane logowania',
        wrongPassword: () => 'Nieprawidłowe dane logowania',
        userDisabled: () => 'Konto zablokowane',
        emailInUse: () => 'Email jest już w użyciu',
        weakPassword: () => 'Za słabe hasło',
        userNotFound: () => 'Użytkownik nie istnieje',
        deviceNotSupported: () => 'Urządzenie nie jest obsługiwane',
      );
}
