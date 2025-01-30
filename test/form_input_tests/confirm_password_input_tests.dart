import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/confirm_password_input.dart';

void main() {
  group('ConfirmPasswordInput', () {
    const originalPassword = 'StrongPass1';

    test('should return null when passwords match', () {
      const confirmPassword = 'StrongPass1';
      const input = ConfirmPasswordInput.dirty(
        originalPassword: originalPassword,
        value: confirmPassword,
      );
      expect(input.validator(confirmPassword), isNull);
    });

    test(
        'should return ConfirmPasswordError.empty when confirm password is empty',
        () {
      const confirmPassword = '';
      const input = ConfirmPasswordInput.dirty(
        originalPassword: originalPassword,
        value: confirmPassword,
      );
      expect(input.validator(confirmPassword), ConfirmPasswordError.empty);
    });

    test(
        'should return ConfirmPasswordError.notMatching when passwords do not match',
        () {
      const confirmPassword = 'DifferentPass2';
      const input = ConfirmPasswordInput.dirty(
        originalPassword: originalPassword,
        value: confirmPassword,
      );
      expect(
          input.validator(confirmPassword), ConfirmPasswordError.notMatching);
    });

    test('should return null for a pure input', () {
      const input = ConfirmPasswordInput.pure();
      expect(input.validator(''), isNull);
    });
  });
}
