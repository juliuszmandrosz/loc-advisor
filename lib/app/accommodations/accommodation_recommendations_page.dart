import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_entity.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';

@RoutePage()
class AccommodationRecommendationsPage extends StatelessWidget {
  final AccommodationRecommendations recommendations;

  const AccommodationRecommendationsPage({
    required this.recommendations,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Przykładowa paleta kolorów
    const Color mainGradientStart = Color(0xFF00BFA6);
    const Color mainGradientEnd = Color(0xFF1DE9B6);

    return Scaffold(
      // Tło z bardzo jasnym odcieniem dla kontrastu z białymi kartami
      backgroundColor: Colors.grey.shade100,
      // Tworzymy CustomScrollView, by użyć SliverAppBar
      body: CustomScrollView(
        slivers: [
          // 1) GÓRNY NAGŁÓWEK Z PARALLAXEM
          SliverAppBar(
            // Rozwijanie/zwijanie
            pinned: true,
            stretch: true,
            expandedHeight: 300,
            elevation: 0,
            backgroundColor: mainGradientStart,
            // Elastyczna część, w której wyświetlimy tło parallax
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Rekomendacje',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // GRADIENT + ewentualne tło graficzne
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [mainGradientStart, mainGradientEnd],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Możesz tu wstawić NetworkImage z dopasowaniem (cover)
                  // i ewentualnie dodać ciemniejsze tło:
                  // Opakowanie w ColorFiltered lub Container z colorBlendMode:
                  // Image.network(
                  //   'https://picsum.photos/800/600?blur=2',
                  //   fit: BoxFit.cover,
                  // ),
                ],
              ),
            ),
          ),

          // 2) SEKCJA HERO Z INFORMACJAMI O DESTYNACJI I UWAGAMI
          if (recommendations.destination.isNotEmpty ||
              recommendations.additionalNotes.isNotEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: _buildHeroSection(context, recommendations),
              ),
            ),

          // 3) LISTA (SLIVERLIST) – REKOMENDOWANE LOKACJE
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final loc = recommendations.locations[index];
                return _buildRecommendationCard(
                  context,
                  loc,
                  gradientStart: mainGradientStart,
                  gradientEnd: mainGradientEnd,
                );
              },
              childCount: recommendations.locations.length,
            ),
          ),
          // Dodatkowy odstęp na końcu
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }

  // **************************************************************************
  // *                     BUDOWANIE SEKCJI HERO
  // **************************************************************************

  Widget _buildHeroSection(
    BuildContext context,
    AccommodationRecommendations recommendations,
  ) {
    // Ewentualnie glassmorphism background:
    // wystarczy wstawić ten Container w stack i zasłonić przez BackdropFilter
    // tutaj jednak dla czytelności – same "białe" tło
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        // Można dodać tu glass:
        // color: Colors.white.withOpacity(0.2),
        // i poniżej w Stacku BackdropFilter
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (recommendations.destination.isNotEmpty) ...[
            const Text(
              'Cel podróży',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              recommendations.destination,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
          ],
          if (recommendations.additionalNotes.isNotEmpty) ...[
            const SizedBox(height: 16),
            const Text(
              'Dodatkowe uwagi',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              recommendations.additionalNotes,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 15,
                height: 1.4,
              ),
            ),
          ],
        ],
      ),
    );
  }

  // **************************************************************************
  // *                     BUDOWANIE KART REKOMENDACJI
  // **************************************************************************

  Widget _buildRecommendationCard(
    BuildContext context,
    Accommodation location, {
    required Color gradientStart,
    required Color gradientEnd,
  }) {
    // Możesz dodać do modelu `location` jakieś zdjęcie i tu je pokazać.
    // W ramach przykładu wstawiamy placeholder:
    const exampleImage = 'https://picsum.photos/800/400';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        // Gradient na obwódce
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              gradientStart.withOpacity(0.6),
              gradientEnd.withOpacity(0.6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          margin:
              const EdgeInsets.all(2), // odsunięcie, żeby widać było obwódkę
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          child: Column(
            children: [
              // Zdjęcie miejsca
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(14),
                ),
                child: Stack(
                  children: [
                    // Tło
                    Image.network(
                      exampleImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 180,
                    ),
                    // Przyciemnienie – jeżeli chcesz lepiej wyeksponować tekst
                    // Container(
                    //   width: double.infinity,
                    //   height: 180,
                    //   color: Colors.black26,
                    // ),
                  ],
                ),
              ),
              // Treść
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nagłówek: nazwa + fav ikona
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            location.placeName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              height: 1.3,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // TODO: obsługa polubienia
                          },
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.pinkAccent,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Opis
                    Text(
                      location.description,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Info: local vibe, safety, transport, budget
                    _buildInfoRow(
                      icon: Icons.location_on,
                      iconColor: gradientStart,
                      text: location.localVibe,
                    ),
                    const SizedBox(height: 10),
                    _buildInfoRow(
                      icon: Icons.security,
                      iconColor: Colors.orangeAccent,
                      text: location.safetyTips,
                    ),
                    const SizedBox(height: 10),
                    _buildInfoRow(
                      icon: Icons.directions_bus,
                      iconColor: Colors.blueAccent,
                      text: location.transportTips,
                    ),
                    const SizedBox(height: 10),
                    _buildInfoRow(
                      icon: Icons.attach_money,
                      iconColor: Colors.green,
                      text: location.budgetTips,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Reużywalny wiersz z ikonką i tekstem.
  Widget _buildInfoRow({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 18),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
