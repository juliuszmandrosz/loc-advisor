import 'package:flutter/material.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_entity.dart';

class ActivityExpandableCard extends StatelessWidget {
  final Activity activity;

  const ActivityExpandableCard({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(side: BorderSide.none),
        title: Text(
          activity.placeName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          _buildInfoRow(
            icon: Icons.info,
            color: Colors.blueAccent,
            text: activity.description,
          ),
          _buildInfoRow(
            icon: Icons.timelapse,
            color: Colors.teal,
            text: activity.bestTimeToVisit,
          ),
          _buildInfoRow(
            icon: Icons.security,
            color: Colors.orange,
            text: activity.safetyTips,
          ),
          _buildInfoRow(
            icon: Icons.map,
            color: Colors.blue,
            text: activity.combinationTips,
          ),
          _buildInfoRow(
            icon: Icons.attach_money,
            color: Colors.green,
            text: activity.budgetTips,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required Color color,
    required String text,
  }) {
    return ListTile(
      dense: true,
      leading: Icon(icon, color: color),
      title: Text(text),
    );
  }
}
