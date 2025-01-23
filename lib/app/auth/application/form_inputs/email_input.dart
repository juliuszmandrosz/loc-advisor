import 'package:formz/formz.dart';

enum EmailError {
  empty,
  invalid;

  String get message {
    switch (this) {
      case EmailError.empty:
        return 'Proszę podać adres e-mail';
      case EmailError.invalid:
        return 'Proszę podać poprawny adres e-mail';
    }
  }
}

class EmailInput extends FormzInput<String, EmailError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty(String value) : super.dirty(value);

  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  @override
  EmailError? validator(String value) {
    if (isPure) {
      return null;
    }

    if (value.isEmpty) {
      return EmailError.empty;
    }

    if (!_emailRegex.hasMatch(value)) {
      return EmailError.invalid;
    }

    return null;
  }
}
