part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailInput email,
    required PasswordInput password,
    required bool isFormValid,
    required StateStatus status,
    required Option<AuthFailure> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailInput.pure(),
        password: PasswordInput.pure(),
        isFormValid: true,
        status: StateStatus.initial,
        authFailureOrSuccessOption: none(),
      );
}
