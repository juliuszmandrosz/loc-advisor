import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';

@RoutePage()
class AccommodationRecommendationsPage extends StatelessWidget {
  final AccommodationRecommendations _recommendations;

  const AccommodationRecommendationsPage({
    required AccommodationRecommendations recommendations,
    super.key,
  }) : _recommendations = recommendations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendacje'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _recommendations.locations.length,
        itemBuilder: (context, index) {
          final location = _recommendations.locations[index];
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
                        location.placeName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          // Dodaj do ulubionych - logika do dodania w StatefulWidget
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    location.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.teal),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location.localVibe,
                          style: const TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.security, color: Colors.orange),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location.safetyTips,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.directions_bus, color: Colors.blue),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location.transportTips,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.attach_money, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location.budgetTips,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
