import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/extensions/build_context_extensions.dart';

@RoutePage()
class AccommodationsPage extends StatelessWidget {
  const AccommodationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Zakwaterowanie'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Dokąd jedziesz?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Wpisz lokalizację (np. Madryt, Miami)',
                    prefixIcon: const Icon(Icons.location_on),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (value) {
                    // Wywołaj akcję Cubit do ustawienia lokalizacji
                  },
                ),
                const SizedBox(height: 40),
                const Text(
                  'Gdzie chciałbyś się zatrzymać?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    FilterChip(
                      label: const Text('Blisko plaży lub natury'),
                      avatar: const FaIcon(FontAwesomeIcons.umbrellaBeach,
                          size: 16),
                      selected: false,
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    FilterChip(
                      label: const Text('Blisko centrum'),
                      avatar: const FaIcon(FontAwesomeIcons.city, size: 16),
                      selected: false, // State z Cubit
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    FilterChip(
                      label: const Text('Blisko knajpek i kawiarni'),
                      avatar: const FaIcon(FontAwesomeIcons.utensils, size: 16),
                      selected: false,
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    FilterChip(
                      label: const Text('Blisko transportu publicznego'),
                      avatar: const FaIcon(FontAwesomeIcons.bus, size: 16),
                      selected: false, // State z Cubit
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Preferencje',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                const Text('Budżet:'),
                Wrap(
                  spacing: 12,
                  children: [
                    ChoiceChip(
                      label: const Text('Tanie'),
                      selected: false, // State z Cubit
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    ChoiceChip(
                      label: const Text('Średnie'),
                      selected: false,
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    ChoiceChip(
                      label: const Text('Luksusowe'),
                      selected: false,
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text('Atmosfera:'),
                Wrap(
                  spacing: 12,
                  children: [
                    ChoiceChip(
                      label: const Text('Spokojne'),
                      selected: false, // State z Cubit
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                    ChoiceChip(
                      label: const Text('Tętniące życiem'),
                      selected: false,
                      onSelected: (isSelected) {
                        // Wywołaj akcję Cubit
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Masz dodatkowe uwagi?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Dodaj coś od siebie (opcjonalne)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  maxLines: 3,
                  onChanged: (value) {
                    // Wywołaj akcję Cubit
                  },
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Wywołaj akcję Cubit do wysłania zapytania
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
