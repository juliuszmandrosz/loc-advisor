import 'package:formz/formz.dart';

enum PasswordError {
  empty,
  tooShort,
  noUpperCase,
  noNumber;

  String get message {
    switch (this) {
      case PasswordError.empty:
        return 'Proszę podać hasło';
      case PasswordError.tooShort:
        return 'Hasło powinno zawierać co najmniej 8 znaków';
      case PasswordError.noUpperCase:
        return 'Hasło powinno zawierać co najmniej jedną dużą literę';
      case PasswordError.noNumber:
        return 'Hasło powinno zawierać co najmniej jedną cyfrę';
    }
  }
}

class PasswordInput extends FormzInput<String, PasswordError> {
  final bool isSignUp;

  const PasswordInput.pure({
    this.isSignUp = false,
  }) : super.pure('');

  const PasswordInput.dirty({
    String value = '',
    this.isSignUp = false,
  }) : super.dirty(value);

  @override
  PasswordError? validator(String value) {
    if (isPure) {
      return null;
    }

    if (value.isEmpty) {
      return PasswordError.empty;
    }

    if (!isSignUp) {
      return null;
    }

    if (value.length < 8) {
      return PasswordError.tooShort;
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return PasswordError.noUpperCase;
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return PasswordError.noNumber;
    }

    return null;
  }
}
