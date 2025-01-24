import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Discover Page'),
    );
  }
}
