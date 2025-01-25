import 'package:flutter/material.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class NextPageError extends StatelessWidget {
  final VoidCallback retryCallback;

  const NextPageError({
    required this.retryCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          'Wystąpił nieoczekiwany błąd,',
          style: context.bodySmall,
        ),
        TextButton(
          onPressed: retryCallback,
          child: Text(
            'spróbuj ponownie.',
            style: context.bodySmall.copyWith(
              color: context.primary,
            ),
          ),
        ),
      ],
    );
  }
}
