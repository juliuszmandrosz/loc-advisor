import 'package:flutter/material.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

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

  Future<bool?> showDeleteConfirmationDialog() async {
    return await showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text('Potwierdź'),
          content: Text('Czy na pewno chcesz usunąć wybrany element?'),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: context.onSurface.withOpacity(0.7),
              ),
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('Anuluj'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Usuń'),
            ),
          ],
        );
      },
    );
  }

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}
