import 'package:flutter/material.dart';

extension UnfocusExtension on BuildContext {
  void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  showSnackbarMessage(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.fixed,
        ),
      );
  }
}
