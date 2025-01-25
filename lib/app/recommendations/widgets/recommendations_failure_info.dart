import 'package:flutter/material.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class RecommendationsFailureInfo extends StatelessWidget {
  final VoidCallback retryCallback;

  const RecommendationsFailureInfo({
    required this.retryCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Wystąpił błąd, proszę spróbować ponownie.',
            style: context.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: retryCallback,
            child: Text('Spróbuj ponownie'),
          ),
        ],
      ),
    );
  }
}
