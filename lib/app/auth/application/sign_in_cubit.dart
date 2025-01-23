import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/email_input.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/password_input.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final AuthFacade _authFacade;

  SignInCubit(this._authFacade) : super(SignInState.initial());

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
    emit(state.copyWith(password: PasswordInput.dirty(value: password)));
  }

  void validatePassword() {
    final password = PasswordInput.dirty(value: state.password.value);
    final isFormValid = Formz.validate([password]);
    emit(
      state.copyWith(
        password: password,
        isFormValid: isFormValid,
      ),
    );
  }

  Future<void> signIn() async {
    emit(
      state.copyWith(
        email: EmailInput.dirty(state.email.value),
        password: PasswordInput.dirty(value: state.password.value),
      ),
    );

    final isFormValid = Formz.validate([state.email, state.password]);

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

    final result = await _authFacade.signIn(
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
