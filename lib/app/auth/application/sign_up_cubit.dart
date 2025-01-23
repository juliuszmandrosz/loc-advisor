import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/confirm_password_input.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/email_input.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/password_input.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final AuthFacade _authFacade;

  SignUpCubit(this._authFacade) : super(SignUpState.initial());

  void setEmail(String email) {
    emit(state.copyWith(email: EmailInput.dirty(email)));
  }

  void validateEmail() {
    final email = EmailInput.dirty(state.email.value);
    final isFormValid = Formz.validate([email]);
    emit(
      state.copyWith(
        email: email,
        isFormValid: isFormValid,
      ),
    );
  }

  void setPassword(String password) {
    emit(
      state.copyWith(
        password: PasswordInput.dirty(
          value: password,
          isSignUp: true,
        ),
      ),
    );
  }

  void validatePassword() {
    final password = PasswordInput.dirty(
      value: state.password.value,
      isSignUp: true,
    );
    final isFormValid = Formz.validate([password]);
    emit(
      state.copyWith(
        password: password,
        isFormValid: isFormValid,
      ),
    );
  }

  void setConfirmPassword(String confirmPassword) {
    emit(
      state.copyWith(
        confirmPassword: ConfirmPasswordInput.dirty(
          originalPassword: state.password.value,
          value: confirmPassword,
        ),
      ),
    );
  }

  void validateConfirmPassword() {
    final confirmPassword = ConfirmPasswordInput.dirty(
      originalPassword: state.password.value,
      value: state.confirmPassword.value,
    );
    final isFormValid = Formz.validate([confirmPassword]);
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        isFormValid: isFormValid,
      ),
    );
  }

  Future<void> signUp() async {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        password: PasswordInput.dirty(
          value: state.password.value,
          isSignUp: true,
        ),
        confirmPassword: ConfirmPasswordInput.dirty(
          originalPassword: state.password.value,
          value: state.confirmPassword.value,
        ),
      ),
    );

    final isFormValid = Formz.validate(
      [
        state.email,
        state.password,
        state.confirmPassword,
      ],
    );

    if (!isFormValid) {
      emit(state.copyWith(isFormValid: isFormValid));
      return;
    }

    emit(
      state.copyWith(
        isFormValid: isFormValid,
        status: StateStatus.loading,
      ),
    );

    final result = await _authFacade.signUp(
      email: state.email.value,
      password: state.password.value,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: StateStatus.failure,
          authFailureOrSuccessOption: some(failure),
        ),
      ),
      (result) => emit(
        state.copyWith(status: StateStatus.success),
      ),
    );
  }
}
