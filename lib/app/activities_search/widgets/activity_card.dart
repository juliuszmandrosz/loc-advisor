import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_entity.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({
    required this.activity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  activity.placeName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              activity.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.clock,
                  color: Colors.teal.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(activity.bestTimeToVisit)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.shieldHalved,
                  color: Colors.orange.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(activity.safetyTips)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.mapLocationDot,
                  color: Colors.blue.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(activity.combinationTips)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.wallet,
                  color: Colors.green.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(activity.budgetTips)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
