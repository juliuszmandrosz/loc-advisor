import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loc_advisor/shared/form_input_models/preferences_input.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';

void main() {
  group('PreferencesInput', () {
    test('should return null when at least one preference is selected', () {
      final preferences = [
        PreferencesModel(
          label: 'Nightlife',
          isSelected: false,
          icon: Icons.nightlife,
        ),
        PreferencesModel(
          label: 'Nature',
          isSelected: true,
          icon: Icons.park,
        ),
      ];
      final input = PreferencesInput.dirty(preferences);
      expect(input.validator(preferences), isNull);
    });

    test(
        'should return PreferencesError.noneSelected when no preference is selected',
        () {
      final preferences = [
        PreferencesModel(
          label: 'Nightlife',
          isSelected: false,
          icon: Icons.nightlife,
        ),
        PreferencesModel(
          label: 'Nature',
          isSelected: false,
          icon: Icons.park,
        ),
      ];
      final input = PreferencesInput.dirty(preferences);
      expect(input.validator(preferences), PreferencesError.noneSelected);
    });

    test('should return null for a pure input', () {
      final input = PreferencesInput.pure([]);
      expect(input.validator([]), isNull);
    });

    test('should return null when multiple preferences are selected', () {
      final preferences = [
        PreferencesModel(
          label: 'Nightlife',
          isSelected: true,
          icon: Icons.nightlife,
        ),
        PreferencesModel(
          label: 'Nature',
          isSelected: true,
          icon: Icons.park,
        ),
      ];
      final input = PreferencesInput.dirty(preferences);
      expect(input.validator(preferences), isNull);
    });
  });
}
