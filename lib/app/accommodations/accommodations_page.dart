import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loc_advisor/app/accommodations/application/accommodations_cubit.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';
import 'package:loc_advisor/injection_container/injectable.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_choice_chips.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_filter_chips.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_area.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_text_input.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

@RoutePage()
class AccommodationsPage extends StatelessWidget {
  const AccommodationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccommodationsCubit>(),
      child: BlocBuilder<AccommodationsCubit, AccommodationsState>(
        builder: (context, state) {
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
                      LocAdvisorTextInput(
                        value: state.destination.value,
                        onChanged:
                            context.read<AccommodationsCubit>().setDestination,
                        onValidate: context
                            .read<AccommodationsCubit>()
                            .validateDestination,
                        errorText: state.destination.error?.message,
                        hintText: 'Wpisz lokalizację (np. Madryt)',
                        prefixIcon: Icons.location_on,
                        isFormValid: state.isFormValid,
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
                      LocAdvisorFilterChips(
                        options: state.locationPreferences.value,
                        onToggle: context
                            .read<AccommodationsCubit>()
                            .toggleLocationPreference,
                        errorText: state.locationPreferences.error?.message,
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
                      Text('Budżet:', style: context.bodyMedium),
                      LocAdvisorChoiceChips(
                        options: state.budgetOptions.value,
                        onToggle:
                            context.read<AccommodationsCubit>().toggleBudget,
                        errorText: state.budgetOptions.error?.message,
                        isFormValid: state.isFormValid,
                      ),
                      const SizedBox(height: 24),
                      const Text('Atmosfera:'),
                      LocAdvisorChoiceChips(
                        options: state.atmosphereOptions.value,
                        onToggle: context
                            .read<AccommodationsCubit>()
                            .toggleAtmosphere,
                        errorText: state.atmosphereOptions.error?.message,
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
                            .read<AccommodationsCubit>()
                            .setAdditionalNotes,
                        onValidate: context
                            .read<AccommodationsCubit>()
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
              floatingActionButton: FloatingActionButton(
                onPressed:
                    context.read<AccommodationsCubit>().submitAccommodations,
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );
  }
}
