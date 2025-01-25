// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:loc_advisor/shared/widgets/loc_advisor_gradient_background_page.dart';
//
// // MODELE (są u Ciebie w projekcie, tu wklejam uproszczone wersje, żeby przykład był samowystarczalny)
//
// // Jeden obiekt "Accommodation"
// class Accommodation {
//   final String placeName;
//   final String description;
//   final String localVibe;
//   final String safetyTips;
//   final String transportTips;
//   final String budgetTips;
//
//   const Accommodation({
//     required this.placeName,
//     required this.description,
//     required this.localVibe,
//     required this.safetyTips,
//     required this.transportTips,
//     required this.budgetTips,
//   });
// }
//
// // Zbiór rekomendacji zakwaterowań dla danego "destination"
// class AccommodationRecommendations {
//   final String id;
//   final String destination;
//   final List<Accommodation> locations;
//   final String additionalNotes;
//
//   const AccommodationRecommendations({
//     required this.id,
//     required this.destination,
//     required this.locations,
//     required this.additionalNotes,
//   });
// }
//
// // PRZYKŁADOWE DANE
// final List<AccommodationRecommendations> dummyRecommendations = [
//   AccommodationRecommendations(
//     id: '1',
//     destination: 'Kraków',
//     locations: [
//       const Accommodation(
//         placeName: 'Hotel Wawel',
//         description:
//             'Z widokiem na Zamek Królewski, idealny dla miłośników historii.',
//         localVibe: 'Klimat starych, krakowskich kamienic.',
//         safetyTips: 'Uważaj na kieszonkowców w zatłoczonych miejscach.',
//         transportTips:
//             'Komunikacja miejska dobrze rozwinięta (tramwaje, autobusy).',
//         budgetTips: 'W pobliżu wiele opcji jedzenia na każdą kieszeń.',
//       ),
//       const Accommodation(
//         placeName: 'Hostel Studencki',
//         description:
//             'Tani hostel w pobliżu Starego Miasta, przyjazny studentom.',
//         localVibe: 'Okolice uniwersyteckie, tętniące życiem nocnym.',
//         safetyTips: 'Po zmroku uważać na mniej oświetlone uliczki.',
//         transportTips: 'Możliwość dojazdu rowerem miejskim.',
//         budgetTips:
//             'Bardzo tanie pokoje wieloosobowe poza sezonem turystycznym.',
//       ),
//     ],
//     additionalNotes: 'Warto zwiedzić Wawel, Rynek Główny i Kazimierz.',
//   ),
//   AccommodationRecommendations(
//     id: '2',
//     destination: 'Zakopane',
//     locations: [
//       const Accommodation(
//         placeName: 'Pensjonat Góralski',
//         description: 'Urokliwe miejsce w stylu góralskim, z widokiem na Tatry.',
//         localVibe: 'Spokojna okolica, bliskość szlaków turystycznych.',
//         safetyTips: 'Zawsze sprawdzaj prognozę pogody przed wyjściem w góry.',
//         transportTips: 'Busiki dowożą turystów w różne części Tatr.',
//         budgetTips: 'Tańsze poza sezonem zimowym oraz świętami.',
//       ),
//       const Accommodation(
//         placeName: 'Hotel Spa Tatra',
//         description: 'Wyższy standard, basen i spa na miejscu.',
//         localVibe: 'Idealne miejsce na regenerację po górskich wyprawach.',
//         safetyTips: 'Unikaj przepełnionych wyciągów w sezonie narciarskim.',
//         transportTips: 'Parking hotelowy lub transfer z dworca PKP/PKS.',
//         budgetTips: 'Ceny wyższe w okresie ferii i wakacji.',
//       ),
//     ],
//     additionalNotes:
//         'Polana Szymoszkowa, Gubałówka, Morskie Oko – koniecznie zobacz!',
//   ),
//   AccommodationRecommendations(
//     id: '3',
//     destination: 'Gdańsk',
//     locations: [
//       const Accommodation(
//         placeName: 'Apartamenty Neptun',
//         description: 'Eleganckie apartamenty w samym sercu Starego Miasta.',
//         localVibe: 'Nadmorski klimat, zabytkowe kamieniczki przy Długim Targu.',
//         safetyTips:
//             'Przestrzegaj zasad obowiązujących w ruchliwych rejonach turystycznych.',
//         transportTips: 'Doskonałe połączenie tramwajów wodnych i miejskich.',
//         budgetTips: 'Poza sezonem letnim ceny apartamentów są znacznie niższe.',
//       ),
//     ],
//     additionalNotes:
//         'Warto zwiedzić Muzeum II Wojny Światowej i Europejskie Centrum Solidarności.',
//   ),
// ];
//
// // TEN WIDGET PREZENTUJE POJEDYNCZY OBIEKT "Accommodation" W ROZWIJANEJ KARCIE
// class AccommodationExpandableCard extends StatelessWidget {
//   final Accommodation accommodation;
//
//   const AccommodationExpandableCard({
//     Key? key,
//     required this.accommodation,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.teal.shade50,
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: ExpansionTile(
//         title: Text(
//           accommodation.placeName,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Text(
//           accommodation.description,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//           style: const TextStyle(fontSize: 14),
//         ),
//         children: [
//           _buildInfoRow(
//             icon: Icons.location_on,
//             color: Colors.teal,
//             text: accommodation.localVibe,
//           ),
//           _buildInfoRow(
//             icon: Icons.security,
//             color: Colors.orange,
//             text: accommodation.safetyTips,
//           ),
//           _buildInfoRow(
//             icon: Icons.directions_bus,
//             color: Colors.blue,
//             text: accommodation.transportTips,
//           ),
//           _buildInfoRow(
//             icon: Icons.attach_money,
//             color: Colors.green,
//             text: accommodation.budgetTips,
//           ),
//           const SizedBox(height: 8),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildInfoRow({
//     required IconData icon,
//     required Color color,
//     required String text,
//   }) {
//     return ListTile(
//       dense: true,
//       leading: Icon(icon, color: color),
//       title: Text(text),
//     );
//   }
// }
//
// @RoutePage()
// class RecommendationsPage extends StatefulWidget {
//   const RecommendationsPage({super.key});
//
//   @override
//   State<RecommendationsPage> createState() => _RecommendationsPageState();
// }
//
// class _RecommendationsPageState extends State<RecommendationsPage> {
//   final TextEditingController _destinationController = TextEditingController();
//
//   @override
//   void dispose() {
//     _destinationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Filtrowanie listy po polu "destination"
//     final filteredRecommendations = dummyRecommendations.where((rec) {
//       final filterText = _destinationController.text.trim().toLowerCase();
//       if (filterText.isEmpty) {
//         return true; // Jeśli brak filtra, pokaż wszystko
//       }
//       return rec.destination.toLowerCase().contains(filterText);
//     }).toList();
//
//     return LocAdvisorGradientBackgroundPage(
//       child: Column(
//         children: [
//           // Pole tekstowe do wpisywania filtra
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _destinationController,
//               onChanged: (_) => setState(() {}), // odświeżenie UI po zmianie
//               decoration: InputDecoration(
//                 labelText: 'Wyszukaj po destynacji',
//                 hintText: 'np. Kraków, Zakopane, Gdańsk...',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 prefixIcon: const Icon(Icons.search),
//                 suffixIcon: _destinationController.text.isNotEmpty
//                     ? IconButton(
//                         icon: const Icon(Icons.clear),
//                         onPressed: () {
//                           _destinationController.clear();
//                           setState(() {});
//                         },
//                       )
//                     : null,
//               ),
//             ),
//           ),
//
//           Expanded(
//             // Lista obiektów AccommodationRecommendations (po filtrze)
//             child: ListView.builder(
//               itemCount: filteredRecommendations.length,
//               itemBuilder: (context, index) {
//                 final recommendation = filteredRecommendations[index];
//
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 8,
//                   ),
//                   child: Card(
//                     color: Colors.teal.shade50,
//                     elevation: 8,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Nazwa destynacji
//                           Text(
//                             recommendation.destination,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .titleMedium
//                                 ?.copyWith(fontWeight: FontWeight.bold),
//                           ),
//                           const SizedBox(height: 8),
//                           // Dodatkowe notatki (opcjonalne)
//                           if (recommendation.additionalNotes.isNotEmpty) ...[
//                             Text(
//                               recommendation.additionalNotes,
//                               style: Theme.of(context).textTheme.bodyMedium,
//                             ),
//                             const SizedBox(height: 8),
//                           ],
//                           // Lista zakwaterowań (każde w formie rozwijanego kafla)
//                           Column(
//                             children: recommendation.locations
//                                 .map((acc) => AccommodationExpandableCard(
//                                       accommodation: acc,
//                                     ))
//                                 .toList(),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
