import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_entity.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_recommendation_list_tile.dart';

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
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.circleInfo,
            color: Colors.blueGrey.shade700,
            text: activity.description,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.clock,
            color: Colors.teal.shade700,
            text: activity.bestTimeToVisit,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.shieldHalved,
            color: Colors.orange.shade700,
            text: activity.safetyTips,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.mapLocationDot,
            color: Colors.blue.shade700,
            text: activity.combinationTips,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.wallet,
            color: Colors.green.shade700,
            text: activity.budgetTips,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
