import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/auth/domain/auth_facade.dart';
import 'package:loc_advisor/auth/infrastructure/firebase_user_extensions.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AuthFacade)
class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth firebaseAuth;
  final Logger logger;

  FirebaseAuthFacade({required this.firebaseAuth, required this.logger});

  @override
  Stream<Option<AppUser>> listenToAuthStateChange() async* {
    yield* firebaseAuth.authStateChanges().asyncExpand((user) async* {
      if (user == null) {
        logger.i('Not authenticated');
        yield none();
        return;
      }
      try {
        logger.i('Authenticated');
        final appUser = user.toDomain();
        yield some(appUser);
      } on FirebaseAuthException catch (e) {
        logger.e('FirebaseAuthException ${e.message}');
        yield none();
      } on FirebaseException catch (e) {
        logger.e('FirebaseException ${e.message}');
        yield none();
      }
    });
  }
}
