import 'package:flutter/material.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class LocAdvisorGradientBackgroundPage extends StatelessWidget {
  final Widget child;

  const LocAdvisorGradientBackgroundPage({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.teal.shade200,
            Colors.teal.shade100,
            Colors.teal.shade50,
            context.background,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
