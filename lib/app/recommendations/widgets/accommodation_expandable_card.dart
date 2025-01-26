import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_entity.dart';

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
          _buildInfoRow(
            icon: Icons.info,
            color: Colors.blueAccent,
            text: accommodation.description,
          ),
          _buildInfoRow(
            icon: Icons.location_on,
            color: Colors.teal,
            text: accommodation.localVibe,
          ),
          _buildInfoRow(
            icon: Icons.security,
            color: Colors.orange,
            text: accommodation.safetyTips,
          ),
          _buildInfoRow(
            icon: Icons.directions_bus,
            color: Colors.blue,
            text: accommodation.transportTips,
          ),
          _buildInfoRow(
            icon: Icons.attach_money,
            color: Colors.green,
            text: accommodation.budgetTips,
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
