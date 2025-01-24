part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Option<AppUser> user,
    required StateStatus status,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        user: none(),
        status: StateStatus.initial,
      );
}
