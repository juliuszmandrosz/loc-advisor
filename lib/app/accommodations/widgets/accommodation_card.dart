import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_entity.dart';

class AccommodationCard extends StatelessWidget {
  final Accommodation accommodation;
  final bool isAuthenticated;

  const AccommodationCard({
    required this.accommodation,
    required this.isAuthenticated,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
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
                if (isAuthenticated)
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Dodaj do ulubionych - logika do dodania w StatefulWidget
                    },
                  )
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
                const Icon(Icons.location_on, color: Colors.teal),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    accommodation.localVibe,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.security, color: Colors.orange),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    accommodation.safetyTips,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.directions_bus, color: Colors.blue),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    accommodation.transportTips,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.attach_money, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    accommodation.budgetTips,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
