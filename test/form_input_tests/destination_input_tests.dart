import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/shared/form_input_models/destination_input.dart';

void main() {
  group('DestinationInput', () {
    test('should return null for a valid destination', () {
      const destination = 'Miami';
      const input = DestinationInput.dirty(destination);
      expect(input.validator(destination), isNull);
    });

    test('should return DestinationError.empty for an empty destination', () {
      const destination = '';
      const input = DestinationInput.dirty(destination);
      expect(input.validator(destination), DestinationError.empty);
    });

    test('should return DestinationError.tooShort for a short destination', () {
      const destination = 'NY';
      const input = DestinationInput.dirty(destination);
      expect(input.validator(destination), DestinationError.tooShort);
    });

    test('should return DestinationError.tooLong for a long destination', () {
      var destination = 'A' * 31;
      var input = DestinationInput.dirty(destination);
      expect(input.validator(destination), DestinationError.tooLong);
    });

    test('should return null for a pure input', () {
      const input = DestinationInput.pure();
      expect(input.validator(''), isNull);
    });
  });
}
