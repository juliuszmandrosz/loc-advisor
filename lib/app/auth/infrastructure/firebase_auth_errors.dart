import 'package:loc_advisor/app/auth/domain/auth_failure.dart';

const firebaseAuthErrors = {
  'account-exists-with-different-credential': AuthFailure.accountExists(),
  'invalid-credential': AuthFailure.invalidCredential(),
  'invalid-email': AuthFailure.invalidEmail(),
  'user-disabled': AuthFailure.userDisabled(),
  'email-already-in-use': AuthFailure.emailInUse(),
  'weak-password': AuthFailure.weakPassword(),
  'user-not-found': AuthFailure.userNotFound(),
  'wrong-password': AuthFailure.wrongPassword(),
  'already-exists': AuthFailure.accountExists(),
  'not-found': AuthFailure.userNotFound(),
  'app-not-authorized': AuthFailure.deviceNotSupported(),
};
