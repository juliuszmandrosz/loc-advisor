import 'package:formz/formz.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';

enum PreferencesError {
  noneSelected;

  String get message {
    switch (this) {
      case PreferencesError.noneSelected:
        return 'Proszę wybrać przynajmniej jedną opcję';
    }
  }
}

class PreferencesInput
    extends FormzInput<List<PreferencesModel>, PreferencesError> {
  const PreferencesInput.pure(List<PreferencesModel> value) : super.pure(value);
  const PreferencesInput.dirty(List<PreferencesModel> value)
      : super.dirty(value);

  @override
  PreferencesError? validator(List<PreferencesModel> value) {
    if (isPure) {
      return null;
    }

    final isAnySelected = value.any((option) => option.isSelected);

    if (!isAnySelected) {
      return PreferencesError.noneSelected;
    }

    return null;
  }
}
