import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocAdvisorRecommendationListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const LocAdvisorRecommendationListTile({
    required this.icon,
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: FaIcon(
        icon,
        color: color,
        size: 20,
      ),
      title: Text(text),
    );
  }
}
