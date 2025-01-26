import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart';
import 'package:loc_advisor/app/recommendations/widgets/accommodation_expandable_card.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

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
                  onPressed: () async {
                    final confirm =
                        await context.showDeleteConfirmationDialog();
                    if (confirm == true && context.mounted) {
                      context
                          .read<AccommodationListBloc>()
                          .add(AccommodationListEvent.deleted(recommendation));
                    }
                  },
                  icon: FaIcon(FontAwesomeIcons.trashCan),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(recommendation.additionalNotes, style: context.bodyMedium),
            const SizedBox(height: 16),
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
