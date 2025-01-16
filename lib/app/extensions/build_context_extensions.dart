import 'package:flutter/material.dart';

extension UnfocusExtension on BuildContext {
  void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
