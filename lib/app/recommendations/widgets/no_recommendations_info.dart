import 'package:flutter/material.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class NoRecommendationsInfo extends StatelessWidget {
  final Function(BuildContext context) onRefreshed;

  const NoRecommendationsInfo({
    required this.onRefreshed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Brak rekomendacji',
            style: context.titleSmall,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => onRefreshed(context),
            child: Text('Odśwież'),
          ),
        ],
      ),
    );
  }
}
