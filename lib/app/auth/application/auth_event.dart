part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authInitialized() = _AuthInitialized;

  const factory AuthEvent.signedOut() = _SignedOut;
}
