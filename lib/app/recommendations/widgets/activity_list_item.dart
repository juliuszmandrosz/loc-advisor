import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/widgets/activity_expandable_card.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class ActivityListItem extends StatelessWidget {
  final ActivityRecommendations recommendation;

  const ActivityListItem({
    required this.recommendation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
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
                  recommendation.destination,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  iconSize: 18,
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.trashCan),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(recommendation.additionalNotes, style: context.bodyMedium),
            const SizedBox(height: 16),
            Column(
              children: recommendation.activities
                  .map(
                    (activity) => ActivityExpandableCard(
                      activity: activity,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
