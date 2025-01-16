import 'package:formz/formz.dart';

enum DestinationError {
  empty,
  tooLong,
  tooShort;

  String get message {
    switch (this) {
      case DestinationError.empty:
        return 'Proszę uzupełnić lokalizację';
      case DestinationError.tooLong:
        return 'Lokalizacja nie może być dłuższa niż 30 znaków';
      case DestinationError.tooShort:
        return 'Lokalizacja powinna zawierać conajmniej 3 znaki';
    }
  }
}

class DestinationInput extends FormzInput<String, DestinationError> {
  const DestinationInput.pure() : super.pure('');

  const DestinationInput.dirty(String value) : super.dirty(value);

  @override
  DestinationError? validator(String value) {
    if (isPure) {
      return null;
    }

    if (value.isEmpty) {
      return DestinationError.empty;
    }

    if (value.length < 3) {
      return DestinationError.tooShort;
    }

    if (value.length > 30) {
      return DestinationError.tooLong;
    }

    return null;
  }
}
