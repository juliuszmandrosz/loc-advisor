part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailInput email,
    required PasswordInput password,
    required ConfirmPasswordInput confirmPassword,
    required bool isFormValid,
    required StateStatus status,
    required Option<AuthFailure> authFailureOrSuccessOption,
    required Option<String> recommendationId,
    required Option<RecommendationType> recommendationType,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: EmailInput.pure(),
        password: PasswordInput.pure(),
        confirmPassword: ConfirmPasswordInput.pure(),
        isFormValid: true,
        status: StateStatus.initial,
        authFailureOrSuccessOption: none(),
        recommendationId: none(),
        recommendationType: none(),
      );
}
