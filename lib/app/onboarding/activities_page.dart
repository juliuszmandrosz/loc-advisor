import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktywności'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Gdzie szukasz?',
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
                'Na kiedy szukasz?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ChoiceChip(
                    label: Text('Na dzisiaj'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(
                    label: Text('Na później'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Co chcesz robić?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  FilterChip(
                    label: const Text('Jedzenie'),
                    avatar: const FaIcon(FontAwesomeIcons.utensils, size: 16),
                    selected: false,
                    onSelected: (isSelected) {
                      // Wywołaj akcję Cubit
                    },
                  ),
                  FilterChip(
                    label: const Text('Życie nocne'),
                    avatar: const FaIcon(FontAwesomeIcons.music, size: 16),
                    selected: false,
                    onSelected: (isSelected) {
                      // Wywołaj akcję Cubit
                    },
                  ),
                  FilterChip(
                    label: const Text('Relaks'),
                    avatar: const FaIcon(FontAwesomeIcons.spa, size: 16),
                    selected: false,
                    onSelected: (isSelected) {
                      // Wywołaj akcję Cubit
                    },
                  ),
                  FilterChip(
                    label: const Text('Ukryte perełki'),
                    avatar: const FaIcon(FontAwesomeIcons.gem, size: 16),
                    selected: false,
                    onSelected: (isSelected) {
                      // Wywołaj akcję Cubit
                    },
                  ),
                  FilterChip(
                    label: const Text('Natura'),
                    avatar: const FaIcon(FontAwesomeIcons.tree, size: 16),
                    selected: false,
                    onSelected: (isSelected) {
                      // Wywołaj akcję Cubit
                    },
                  ),
                  FilterChip(
                    label: const Text('Sport'),
                    avatar:
                        const FaIcon(FontAwesomeIcons.personRunning, size: 16),
                    selected: false,
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
    );
  }
}
