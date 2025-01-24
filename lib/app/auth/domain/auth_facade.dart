import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/auth/domain/app_user_entity.dart';
import 'package:loc_advisor/app/auth/domain/auth_failure.dart';
import 'package:loc_advisor/enums/recommendation_type.dart';

abstract class AuthFacade {
  Stream<Option<AppUser>> listenToAuthStateChange();

  Future<Either<AuthFailure, Unit>> signIn({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signUp({
    required String email,
    required String password,
    required Option<String> recommendationId,
    required Option<RecommendationType> recommendationType,
  });

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(String email);

  Future<Either<AuthFailure, Unit>> signOut();
}
