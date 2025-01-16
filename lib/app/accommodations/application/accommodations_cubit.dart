import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_facade.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/shared/form_input_models/additional_notes.dart';
import 'package:loc_advisor/shared/form_input_models/destination_input.dart';
import 'package:loc_advisor/shared/form_input_models/preferences_input.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';

part 'accommodations_cubit.freezed.dart';
part 'accommodations_state.dart';

@injectable
class AccommodationsCubit extends Cubit<AccommodationsState> {
  final AccommodationsFacade _accommodationsFacade;

  AccommodationsCubit(this._accommodationsFacade)
      : super(AccommodationsState.initial());

  void setDestination(String destination) {
    emit(state.copyWith(destination: DestinationInput.dirty(destination)));
  }

  void validateDestination() {
    final destination = DestinationInput.dirty(state.destination.value);
    final isFormValid = Formz.validate([destination]);
    emit(
      state.copyWith(
        destination: destination,
        isFormValid: isFormValid,
      ),
    );
  }

  void toggleLocationPreference(String label) {
    final updatedLocationPreferences =
        state.locationPreferences.value.map((preference) {
      return preference.label == label
          ? preference.copyWith(isSelected: !preference.isSelected)
          : preference;
    }).toList();

    emit(
      state.copyWith(
        locationPreferences: PreferencesInput.dirty(updatedLocationPreferences),
      ),
    );
  }

  void toggleBudget(String label) {
    final updatedBudgetOptions = state.budgetOptions.value.map((budget) {
      return budget.label == label
          ? budget.copyWith(isSelected: !budget.isSelected)
          : budget;
    }).toList();

    emit(
      state.copyWith(
        budgetOptions: PreferencesInput.dirty(updatedBudgetOptions),
      ),
    );
  }

  void toggleAtmosphere(String label) {
    final updatedAtmosphereOptions =
        state.atmosphereOptions.value.map((atmosphere) {
      return atmosphere.label == label
          ? atmosphere.copyWith(isSelected: !atmosphere.isSelected)
          : atmosphere;
    }).toList();

    emit(
      state.copyWith(
        atmosphereOptions: PreferencesInput.dirty(updatedAtmosphereOptions),
      ),
    );
  }

  void setAdditionalNotes(String notes) {
    emit(state.copyWith(additionalNotes: AdditionalNotesInput.dirty(notes)));
  }

  void validateAdditionalNotes() {
    final additionalNotes =
        AdditionalNotesInput.dirty(state.additionalNotes.value);
    final isFormValid = Formz.validate([additionalNotes]);
    emit(
      state.copyWith(
        additionalNotes: additionalNotes,
        isFormValid: isFormValid,
      ),
    );
  }

  Future<void> submitAccommodations() async {
    emit(
      state.copyWith(
        destination: DestinationInput.dirty(state.destination.value),
        locationPreferences:
            PreferencesInput.dirty(state.locationPreferences.value),
        budgetOptions: PreferencesInput.dirty(state.budgetOptions.value),
        atmosphereOptions:
            PreferencesInput.dirty(state.atmosphereOptions.value),
        additionalNotes:
            AdditionalNotesInput.dirty(state.additionalNotes.value),
      ),
    );

    final isFormValid = Formz.validate(
      [
        state.destination,
        state.locationPreferences,
        state.budgetOptions,
        state.atmosphereOptions,
        state.additionalNotes,
      ],
    );

    emit(state.copyWith(isFormValid: isFormValid));
  }
}
