import 'package:flutter/material.dart';

extension UnfocusExtension on BuildContext {
  void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void showSnackbarMessage(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.fixed,
        ),
      );
  }

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}
