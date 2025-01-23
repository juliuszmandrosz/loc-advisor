import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/email_input.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthFacade _authFacade;

  ForgotPasswordCubit(this._authFacade) : super(ForgotPasswordState.initial());

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

  Future<void> sendResetPasswordEmail() async {
    emit(state.copyWith(email: EmailInput.dirty(state.email.value)));

    final isFormValid = Formz.validate([state.email]);

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

    final result = await _authFacade.sendPasswordResetEmail(state.email.value);

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
