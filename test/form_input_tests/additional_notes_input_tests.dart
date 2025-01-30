import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/shared/form_input_models/additional_notes_input.dart';

void main() {
  group('AdditionalNotesInput', () {
    test('should return null for a valid additional note', () {
      const notes = 'This is a valid note.';
      const input = AdditionalNotesInput.dirty(notes);
      expect(input.validator(notes), isNull);
    });

    test(
        'should return AdditionalNotesError.tooLong for a note exceeding 200 characters',
        () {
      var notes = 'A' * 201;
      var input = AdditionalNotesInput.dirty(notes);
      expect(input.validator(notes), AdditionalNotesError.tooLong);
    });

    test('should return null for an empty note', () {
      const notes = '';
      const input = AdditionalNotesInput.dirty(notes);
      expect(input.validator(notes), isNull);
    });

    test('should return null for a pure input', () {
      const input = AdditionalNotesInput.pure();
      expect(input.validator(''), isNull);
    });
  });
}
