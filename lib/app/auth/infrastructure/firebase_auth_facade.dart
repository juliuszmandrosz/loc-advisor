import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/app/auth/infrastructure/firebase_auth_errors.dart';
import 'package:loc_advisor/app/auth/infrastructure/firebase_user_extensions.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AuthFacade)
class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _auth;
  final Logger _logger;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _logger = logger,
        _auth = firebaseAuth;

  @override
  Stream<Option<AppUser>> listenToAuthStateChange() async* {
    yield* _auth.authStateChanges().asyncExpand((user) async* {
      if (user == null) {
        _logger.i('Not authenticated');
        yield none();
        return;
      }
      try {
        _logger.i('Authenticated');
        final appUser = user.toDomain();
        yield some(appUser);
      } on FirebaseAuthException catch (e) {
        _logger.e('FirebaseAuthException ${e.message}');
        yield none();
      } on FirebaseException catch (e) {
        _logger.e('FirebaseException ${e.message}');
        yield none();
      }
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.message);
      final failure = firebaseAuthErrors[e.code];
      return left(failure ?? const AuthFailure.unexpected());
    } on Exception catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.message);
      final failure = firebaseAuthErrors[e.code];
      return left(failure ?? const AuthFailure.unexpected());
    } on Exception catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      _logger.e(e.message);
      final failure = firebaseAuthErrors[e.code];
      return left(failure ?? const AuthFailure.unexpected());
    } on Exception catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _auth.signOut();
      return right(unit);
    } on Exception catch (e) {
      _logger.e(e);
      return left(const AuthFailure.unexpected());
    }
  }
}
