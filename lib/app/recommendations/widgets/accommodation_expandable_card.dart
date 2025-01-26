import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_entity.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_recommendation_list_tile.dart';

class AccommodationExpandableCard extends StatelessWidget {
  final Accommodation accommodation;

  const AccommodationExpandableCard({
    super.key,
    required this.accommodation,
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
          accommodation.placeName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.circleInfo,
            color: Colors.blueGrey.shade700,
            text: accommodation.description,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.locationDot,
            color: Colors.teal.shade700,
            text: accommodation.localVibe,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.shieldHalved,
            color: Colors.orange.shade700,
            text: accommodation.safetyTips,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.bus,
            color: Colors.blue.shade700,
            text: accommodation.transportTips,
          ),
          LocAdvisorRecommendationListTile(
            icon: FontAwesomeIcons.wallet,
            color: Colors.green.shade700,
            text: accommodation.budgetTips,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
