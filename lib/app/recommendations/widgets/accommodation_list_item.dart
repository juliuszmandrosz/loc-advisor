import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/widgets/accommodation_expandable_card.dart';

class AccommodationListItem extends StatelessWidget {
  final AccommodationRecommendations recommendation;

  const AccommodationListItem({
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
            Text(
              recommendation.destination,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            if (recommendation.additionalNotes.isNotEmpty) ...[
              Text(
                recommendation.additionalNotes,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
            ],
            Column(
              children: recommendation.locations
                  .map(
                    (accommodation) => AccommodationExpandableCard(
                      accommodation: accommodation,
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
