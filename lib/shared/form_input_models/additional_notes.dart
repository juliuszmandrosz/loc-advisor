import 'package:formz/formz.dart';

enum AdditionalNotesError {
  tooLong;

  String get message {
    switch (this) {
      case AdditionalNotesError.tooLong:
        return 'Test nie może być dłuższy niż 100 znaków';
    }
  }
}

class AdditionalNotesInput extends FormzInput<String, AdditionalNotesError> {
  const AdditionalNotesInput.pure() : super.pure('');

  const AdditionalNotesInput.dirty(String value) : super.dirty(value);

  @override
  AdditionalNotesError? validator(String value) {
    if (isPure) {
      return null;
    }

    if (value.length > 30) {
      return AdditionalNotesError.tooLong;
    }

    return null;
  }
}
