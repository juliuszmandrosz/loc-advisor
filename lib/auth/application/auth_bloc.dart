import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/auth/domain/auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade authFacade;

  AuthBloc({required this.authFacade}) : super(AuthState.initial()) {
    on<_AuthInitialized>(_onAuthInitialized);
  }

  FutureOr<void> _onAuthInitialized(
      _AuthInitialized event,
      Emitter<AuthState> emit,
  ) async {
    await emit.forEach(
      authFacade.listenToAuthStateChange(),
      onData: (data) => data.fold(
          AuthState.unauthenticated,
          AuthState.authenticated
      ),
    );
  }
}
