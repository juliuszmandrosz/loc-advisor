part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required EmailInput email,
    required bool isFormValid,
    required StateStatus status,
    required Option<AuthFailure> authFailureOrSuccessOption,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        email: EmailInput.pure(),
        isFormValid: true,
        status: StateStatus.initial,
        authFailureOrSuccessOption: none(),
      );
}
