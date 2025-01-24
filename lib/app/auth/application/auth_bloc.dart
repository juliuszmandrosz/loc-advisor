import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade authFacade;

  AuthBloc({required this.authFacade}) : super(AuthState.initial()) {
    on<_AuthInitialized>(_onAuthInitialized);
    on<_SignedOut>(_onSignedOut);
  }

  FutureOr<void> _onAuthInitialized(
    _AuthInitialized event,
    Emitter<AuthState> emit,
  ) async {
    await emit.forEach(
      authFacade.listenToAuthStateChange(),
      onData: (data) => data.fold(
        () => state.copyWith(user: none()),
        (user) => state.copyWith(user: some(user)),
      ),
    );
  }

  FutureOr<void> _onSignedOut(
    _SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    final result = await authFacade.signOut();
    result.fold(
      (_) => emit(state.copyWith(status: StateStatus.failure)),
      (_) => emit(
        state.copyWith(
          status: StateStatus.success,
          user: none(),
        ),
      ),
    );
  }
}
