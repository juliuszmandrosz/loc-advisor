import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/password_input.dart';

void main() {
  group('PasswordInput', () {
    test('should return null for a valid password during signup', () {
      const password = 'StrongPass1';
      const input = PasswordInput.dirty(value: password, isSignUp: true);
      expect(input.validator(password), isNull);
    });

    test('should return PasswordError.empty for an empty password', () {
      const password = '';
      const input = PasswordInput.dirty(value: password, isSignUp: true);
      expect(input.validator(password), PasswordError.empty);
    });

    test('should return PasswordError.tooShort for a short password', () {
      const password = 'Short1';
      const input = PasswordInput.dirty(value: password, isSignUp: true);
      expect(input.validator(password), PasswordError.tooShort);
    });

    test(
        'should return PasswordError.noUpperCase when password has no uppercase letter',
        () {
      const password = 'weakpassword1';
      const input = PasswordInput.dirty(value: password, isSignUp: true);
      expect(input.validator(password), PasswordError.noUpperCase);
    });

    test('should return PasswordError.noNumber when password has no number',
        () {
      const password = 'NoNumberHere';
      const input = PasswordInput.dirty(value: password, isSignUp: true);
      expect(input.validator(password), PasswordError.noNumber);
    });

    test(
        'should return PasswordError.Empty for empty password when isSignUp is false',
        () {
      const password = '';
      const input = PasswordInput.dirty(value: password, isSignUp: false);
      expect(input.validator(password), PasswordError.empty);
    });

    test(
        'should return null when isSignUp is false, regardless of password strength',
        () {
      const password = 'weak';
      const input = PasswordInput.dirty(value: password, isSignUp: false);
      expect(input.validator(password), isNull);
    });

    test('should return null for a pure input', () {
      const input = PasswordInput.pure(isSignUp: true);
      expect(input.validator(''), isNull);
    });
  });
}
