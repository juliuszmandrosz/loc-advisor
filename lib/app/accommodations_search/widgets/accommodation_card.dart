import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_entity.dart';

class AccommodationCard extends StatelessWidget {
  final Accommodation accommodation;

  const AccommodationCard({
    required this.accommodation,
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
                  accommodation.placeName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              accommodation.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.teal.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(accommodation.localVibe)),
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
                Expanded(child: Text(accommodation.safetyTips)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.bus,
                  color: Colors.blue.shade700,
                  size: 20,
                ),
                const SizedBox(width: 16),
                Expanded(child: Text(accommodation.transportTips)),
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
                Expanded(child: Text(accommodation.budgetTips)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
