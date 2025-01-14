import 'package:firebase_auth/firebase_auth.dart';
import 'package:loc_advisor/auth/domain/app_user_entity.dart';

extension FirebaseUserX on User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      isAnonymous: isAnonymous,
    );
  }
}
