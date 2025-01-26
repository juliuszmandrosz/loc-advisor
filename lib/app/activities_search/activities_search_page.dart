import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:loc_advisor/app/activities_search/application/activities_search_cubit.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/router/app_router.gr.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_choice_chips.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_filter_chips.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_area.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_input.dart';

@RoutePage()
class ActivitiesSearchPage extends StatelessWidget {
  const ActivitiesSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ActivitiesSearchCubit>(),
      child: LoaderOverlay(
        child: BlocConsumer<ActivitiesSearchCubit, ActivitiesSearchState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            switch (state.status) {
              case StateStatus.initial:
              case StateStatus.loading:
                context.unfocus();
                context.loaderOverlay.show();
              case StateStatus.failure:
                context.loaderOverlay.hide();
                context.showSnackbarMessage(
                  'Wystąpił błąd, proszę spróbować ponownie',
                );
              case StateStatus.success:
                context.loaderOverlay.hide();
                state.result.fold(
                  () => context.showSnackbarMessage(
                    'Wystąpił błąd, proszę spróbować ponownie',
                  ),
                  (result) async => await context.pushRoute(
                    ActivityRecommendationsRoute(recommendations: result),
                  ),
                );
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: context.unfocus,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Aktywności'),
                ),
                body: SafeArea(
                  child: Padding(
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
                          LocAdvisorTextInput(
                            value: state.destination.value,
                            onChanged: context
                                .read<ActivitiesSearchCubit>()
                                .setDestination,
                            onValidate: context
                                .read<ActivitiesSearchCubit>()
                                .validateDestination,
                            errorText: state.destination.error?.message,
                            hintText: 'Wpisz lokalizację (np. Madryt)',
                            prefixIcon: Icons.location_on,
                            isFormValid: state.isFormValid,
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
                          LocAdvisorChoiceChips(
                            options: state.dateOption.value,
                            onToggle: context
                                .read<ActivitiesSearchCubit>()
                                .toggleDate,
                            errorText: state.dateOption.error?.message,
                            isFormValid: state.isFormValid,
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
                          LocAdvisorFilterChips(
                            options: state.activityPreferences.value,
                            onToggle: context
                                .read<ActivitiesSearchCubit>()
                                .toggleActivitiesPreference,
                            errorText: state.activityPreferences.error?.message,
                            isFormValid: state.isFormValid,
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
                          LocAdvisorChoiceChips(
                            options: state.budgetOption.value,
                            onToggle: context
                                .read<ActivitiesSearchCubit>()
                                .toggleBudget,
                            errorText: state.budgetOption.error?.message,
                            isFormValid: state.isFormValid,
                          ),
                          const SizedBox(height: 24),
                          const Text('Atmosfera:'),
                          LocAdvisorChoiceChips(
                            options: state.atmosphereOption.value,
                            onToggle: context
                                .read<ActivitiesSearchCubit>()
                                .toggleAtmosphere,
                            errorText: state.atmosphereOption.error?.message,
                            isFormValid: state.isFormValid,
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
                          LocAdvisorTextArea(
                            value: state.additionalNotes.value,
                            onChanged: context
                                .read<ActivitiesSearchCubit>()
                                .setAdditionalNotes,
                            onValidate: context
                                .read<ActivitiesSearchCubit>()
                                .validateAdditionalNotes,
                            errorText: state.additionalNotes.error?.message,
                            hintText: 'Dodaj coś od siebie (opcjonalne)',
                            isFormValid: state.isFormValid,
                          ),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed:
                      context.read<ActivitiesSearchCubit>().submitActivities,
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
