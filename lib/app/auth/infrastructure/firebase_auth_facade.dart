import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/app/auth/domain/auth_facade.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/app/auth/infrastructure/firebase_auth_errors.dart';
import 'package:loc_advisor/app/auth/infrastructure/firebase_user_extensions.dart';
import 'package:loc_advisor/enums/recommendation_type.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AuthFacade)
class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseAuthFacade({
    required FirebaseAuth firebaseAuth,
    required Logger logger,
    required FirebaseFirestore firestore,
  })  : _logger = logger,
        _firestore = firestore,
        _auth = firebaseAuth;

  @override
  Stream<Option<AppUser>> listenToAuthStateChange() async* {
    yield* _auth.authStateChanges().asyncExpand((user) async* {
      if (user == null) {
        yield none();
        return;
      }
      try {
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
    required Option<String> recommendationId,
    required Option<RecommendationType> recommendationType,
  }) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _assignRecommendationsForNewUser(
        userId: user.user!.uid,
        recommendationId: recommendationId,
        recommendationType: recommendationType,
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

  _assignRecommendationsForNewUser({
    required String userId,
    required Option<String> recommendationId,
    required Option<RecommendationType> recommendationType,
  }) async {
    final recommendationsCollection = recommendationType.fold(
      () => null,
      (type) {
        switch (type) {
          case RecommendationType.accommodation:
            return 'accommodation_recommendations';
          case RecommendationType.activity:
            return 'activity_recommendations';
        }
      },
    );

    final requestsCollection = recommendationType.fold(
      () => null,
      (type) {
        switch (type) {
          case RecommendationType.accommodation:
            return 'accommodation_requests';
          case RecommendationType.activity:
            return 'activity_requests';
        }
      },
    );

    if (recommendationsCollection == null || requestsCollection == null) {
      return;
    }

    await recommendationId.fold(
      () {},
      (id) async {
        await _firestore.runTransaction((tx) async {
          final recommendationsDoc = await _firestore
              .collection(recommendationsCollection)
              .doc(id)
              .get();

          if (!recommendationsDoc.exists) {
            return;
          }

          final requestId = recommendationsDoc.get('requestId');

          tx.update(
            recommendationsDoc.reference,
            {'userId': userId},
          );

          tx.update(
            _firestore.collection(requestsCollection).doc(requestId),
            {'userId': userId},
          );
        });
      },
    );
  }
}
