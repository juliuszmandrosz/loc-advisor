import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_search/application/accommodations_request_mapper.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_facade.dart';
import 'package:loc_advisor/enums/state_status.dart';
import 'package:loc_advisor/shared/form_input_models/additional_notes_input.dart';
import 'package:loc_advisor/shared/form_input_models/destination_input.dart';
import 'package:loc_advisor/shared/form_input_models/preferences_input.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';

part 'accommodations_search_cubit.freezed.dart';
part 'accommodations_search_state.dart';

@injectable
class AccommodationsSearchCubit extends Cubit<AccommodationsSearchState> {
  final AccommodationsSearchFacade _accommodationsFacade;

  AccommodationsSearchCubit(this._accommodationsFacade)
      : super(AccommodationsSearchState.initial());

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

  Future<void> submitAccommodations() async {
    emit(
      state.copyWith(
        destination: DestinationInput.dirty(state.destination.value),
        locationPreferences:
            PreferencesInput.dirty(state.locationPreferences.value),
        budgetOption: PreferencesInput.dirty(state.budgetOption.value),
        atmosphereOption: PreferencesInput.dirty(state.atmosphereOption.value),
        additionalNotes:
            AdditionalNotesInput.dirty(state.additionalNotes.value),
      ),
    );

    final isFormValid = Formz.validate(
      [
        state.destination,
        state.locationPreferences,
        state.budgetOption,
        state.atmosphereOption,
        state.additionalNotes,
      ],
    );

    if (!isFormValid) {
      emit(state.copyWith(isFormValid: isFormValid));
      return;
    }

    emit(
      state.copyWith(
        isFormValid: isFormValid,
        status: StateStatus.loading,
      ),
    );

    final request = AccommodationsMapper.mapToRequest(state);
    final result =
        await _accommodationsFacade.getAccommodationRecommendations(request);

    result.fold(
      (_) => emit(state.copyWith(status: StateStatus.failure)),
      (result) => emit(
        state.copyWith(status: StateStatus.success, result: some(result)),
      ),
    );
  }
}
