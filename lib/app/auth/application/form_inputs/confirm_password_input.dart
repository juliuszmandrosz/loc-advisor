import 'package:formz/formz.dart';

enum ConfirmPasswordError {
  empty,
  notMatching;

  String get message {
    switch (this) {
      case ConfirmPasswordError.empty:
        return 'Proszę potwierdzić hasło';
      case ConfirmPasswordError.notMatching:
        return 'Hasła nie są identyczne';
    }
  }
}

class ConfirmPasswordInput extends FormzInput<String, ConfirmPasswordError> {
  final String originalPassword;

  const ConfirmPasswordInput.pure()
      : originalPassword = '',
        super.pure('');

  const ConfirmPasswordInput.dirty({
    required this.originalPassword,
    String value = '',
  }) : super.dirty(value);

  @override
  ConfirmPasswordError? validator(String value) {
    if (isPure) {
      return null;
    }

    if (value.isEmpty) {
      return ConfirmPasswordError.empty;
    }

    if (value != originalPassword) {
      return ConfirmPasswordError.notMatching;
    }

    return null;
  }
}
