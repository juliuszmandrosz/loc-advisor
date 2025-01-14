import 'package:dartz/dartz.dart';
import 'package:loc_advisor/auth/domain/app_user_entity.dart';

abstract class AuthFacade {
  Stream<Option<AppUser>> listenToAuthStateChange();
}
