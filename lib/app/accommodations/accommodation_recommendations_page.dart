import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/widgets/accommodation_card.dart';
import 'package:loc_advisor/app/auth/application/auth_bloc.dart';
import 'package:loc_advisor/enums/recommendation_type.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/sign_up_dialog.dart';
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final isAuthenticated = state.user.fold(
          () => false,
          (_) => true,
        );
        return Scaffold(
          appBar: AppBar(
            title: Text(_recommendations.destination),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (isAuthenticated) {
                await context.replaceRoute(const HomeRoute());
              } else {
                await showDialog(
                  context: context,
                  builder: (_) => SignUpDialog(
                    recommendationId: _recommendations.id,
                    recommendationType: RecommendationType.accommodation,
                  ),
                );
              }
            },
            child: const Icon(Icons.arrow_forward),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.teal.shade50,
                      elevation: 8,
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: context.onPrimaryContainer,
                              size: 28,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                _recommendations.additionalNotes,
                                style: context.bodyMedium.copyWith(
                                  color: context.onPrimaryContainer,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Polecane miejsca',
                      style: context.bodyLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _recommendations.locations.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: AccommodationCard(
                          accommodation: _recommendations.locations[index],
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
