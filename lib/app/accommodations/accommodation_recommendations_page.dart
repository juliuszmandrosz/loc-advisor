import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/widgets/accommodation_card.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

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
        title: Text('Zakwaterowanie w ${_recommendations.destination}'),
        centerTitle: true,
        backgroundColor: context.primary,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(_recommendations.additionalNotes),
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _recommendations.locations.length,
                  itemBuilder: (context, index) => AccommodationCard(
                    accommodation: _recommendations.locations[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
