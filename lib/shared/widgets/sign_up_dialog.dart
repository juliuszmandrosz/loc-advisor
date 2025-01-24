import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/enums/recommendation_type.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class SignUpDialog extends StatelessWidget {
  final String recommendationId;
  final RecommendationType recommendationType;

  const SignUpDialog({
    required this.recommendationId,
    required this.recommendationType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: const Text(
        'Zarejestruj się',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Zarejestruj się, aby odkryć wszystkie funkcje aplikacji i uzyskaj dostęp do:',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Icon(
                Icons.check_circle,
                color: Colors.teal,
                size: 18,
              ),
              SizedBox(width: 8),
              Text('Personalizowanych rekomendacji'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(
                Icons.check_circle,
                color: Colors.teal,
                size: 18,
              ),
              SizedBox(width: 8),
              Text('Dostęp do zapisanych miejsc'),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          style: TextButton.styleFrom(
            foregroundColor: context.onSurface.withOpacity(0.7),
          ),
          child: const Text('Anuluj'),
        ),
        TextButton(
          onPressed: () async => await context.replaceRoute(
            SignUpRoute(
              recommendationId: recommendationId,
              recommendationType: recommendationType,
            ),
          ),
          child: const Text('Zarejestruj się'),
        ),
      ],
    );
  }
}
