import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/widgets/accommodation_card.dart';
import 'package:loc_advisor/app/auth/application/auth_bloc.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/sign_in_dialog.dart';
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
        final isAuthenticated = state.when(
          initial: () => false,
          unauthenticated: () => false,
          authenticated: (user) => user != null,
        );
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Zakwaterowanie w ${_recommendations.destination}',
              style: context.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: context.primary,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (isAuthenticated) {
                await context.replaceRoute(const HomeRoute());
              } else {
                await showDialog(
                  context: context,
                  builder: (_) => SignInDialog(),
                );
              }
            },
            child: const FaIcon(FontAwesomeIcons.arrowRight),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            context.primaryContainer.withOpacity(0.6),
                            context.primaryContainer,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
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
                          isAuthenticated: isAuthenticated,
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
