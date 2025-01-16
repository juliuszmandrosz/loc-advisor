import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities/domain/activities_facade.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/shared/form_input_models/additional_notes.dart';
import 'package:loc_advisor/shared/form_input_models/destination_input.dart';
import 'package:loc_advisor/shared/form_input_models/preferences_input.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';

part 'activities_cubit.freezed.dart';
part 'activities_state.dart';

@injectable
class ActivitiesCubit extends Cubit<ActivitiesState> {
  final ActivitiesFacade _activitiesFacade;

  ActivitiesCubit(this._activitiesFacade) : super(ActivitiesState.initial());

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

  void toggleDate(String label) {
    final updatedDateOption = state.dateOption.value.map((preference) {
      return preference.copyWith(isSelected: preference.label == label);
    }).toList();

    emit(
      state.copyWith(
        dateOption: PreferencesInput.dirty(updatedDateOption),
      ),
    );
  }

  void toggleActivitiesPreference(String label) {
    final updatedActivityPreferences =
        state.activityPreferences.value.map((preference) {
      return preference.label == label
          ? preference.copyWith(isSelected: !preference.isSelected)
          : preference;
    }).toList();

    emit(
      state.copyWith(
        activityPreferences: PreferencesInput.dirty(updatedActivityPreferences),
      ),
    );
  }

  void toggleBudget(String label) {
    final updatedBudgetOptions = state.budgetOption.value.map((budget) {
      return budget.copyWith(isSelected: budget.label == label);
    }).toList();

    emit(
      state.copyWith(
        budgetOption: PreferencesInput.dirty(updatedBudgetOptions),
      ),
    );
  }

  void toggleAtmosphere(String label) {
    final updatedAtmosphereOptions =
        state.atmosphereOption.value.map((atmosphere) {
      return atmosphere.copyWith(isSelected: atmosphere.label == label);
    }).toList();

    emit(
      state.copyWith(
        atmosphereOption: PreferencesInput.dirty(updatedAtmosphereOptions),
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

  Future<void> submitActivities() async {
    emit(
      state.copyWith(
        destination: DestinationInput.dirty(state.destination.value),
        dateOption: PreferencesInput.dirty(state.dateOption.value),
        activityPreferences:
            PreferencesInput.dirty(state.activityPreferences.value),
        budgetOption: PreferencesInput.dirty(state.budgetOption.value),
        atmosphereOption: PreferencesInput.dirty(state.atmosphereOption.value),
        additionalNotes:
            AdditionalNotesInput.dirty(state.additionalNotes.value),
      ),
    );

    final isFormValid = Formz.validate(
      [
        state.destination,
        state.dateOption,
        state.activityPreferences,
        state.budgetOption,
        state.atmosphereOption,
        state.additionalNotes,
      ],
    );

    if (!isFormValid) {
      emit(state.copyWith(isFormValid: isFormValid));
      return;
    }
  }
}
