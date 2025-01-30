import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/app/auth/application/form_inputs/email_input.dart';

void main() {
  group('EmailInput', () {
    test('should return null for a valid email address', () {
      const email = 'test@example.com';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), isNull);
    });

    test('should return EmailError.empty for an empty email address', () {
      const email = '';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), EmailError.empty);
    });

    test('should return EmailError.invalid for an invalid email address', () {
      const email = 'invalid-email';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), EmailError.invalid);
    });

    test('should return EmailError.invalid for an email address missing domain',
        () {
      const email = 'test@';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), EmailError.invalid);
    });

    test(
        'should return EmailError.invalid for an email address missing "@" symbol',
        () {
      const email = 'testexample.com';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), EmailError.invalid);
    });

    test(
        'should return EmailError.invalid for an email address missing country code',
        () {
      const email = 'test@example';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), EmailError.invalid);
    });

    test('should return null for a valid email address with a subdomain', () {
      const email = 'test@mail.example.com';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), isNull);
    });

    test(
        'should return null for a valid email address with numbers and special characters',
        () {
      const email = 'user123+test@example.co.uk';
      const input = EmailInput.dirty(email);
      expect(input.validator(email), isNull);
    });

    test('should return null for a pure input', () {
      const input = EmailInput.pure();
      expect(input.validator(''), isNull);
    });
  });
}
