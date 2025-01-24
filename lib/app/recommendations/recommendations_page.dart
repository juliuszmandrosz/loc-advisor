import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Recommendations Page'),
    );
  }
}
