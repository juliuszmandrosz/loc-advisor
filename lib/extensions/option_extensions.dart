import 'package:dartz/dartz.dart';
import 'package:loc_advisor/errors/invalid_operation_error.dart';

extension OptionX<T> on Option<T> {
  /// Throws [InvalidOperationError]
  T getOrCrash() {
    return getOrElse(() => throw InvalidOperationError());
  }
}