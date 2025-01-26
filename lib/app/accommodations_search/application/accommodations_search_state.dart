part of 'accommodations_search_cubit.dart';

@freezed
class AccommodationsSearchState with _$AccommodationsSearchState {
  const factory AccommodationsSearchState({
    required DestinationInput destination,
    required PreferencesInput locationPreferences,
    required PreferencesInput budgetOption,
    required PreferencesInput atmosphereOption,
    required AdditionalNotesInput additionalNotes,
    required bool isFormValid,
    required StateStatus status,
    required Option<AccommodationRecommendations> result,
  }) = _AccommodationsSearchState;

  factory AccommodationsSearchState.initial() => AccommodationsSearchState(
        destination: DestinationInput.pure(),
        locationPreferences: PreferencesInput.pure([
          PreferencesModel(
            label: 'Blisko plaży lub natury',
            isSelected: false,
            icon: FontAwesomeIcons.umbrellaBeach,
          ),
          PreferencesModel(
            label: 'Blisko centrum',
            isSelected: false,
            icon: FontAwesomeIcons.city,
          ),
          PreferencesModel(
            label: 'Blisko knajpek i kawiarni',
            isSelected: false,
            icon: FontAwesomeIcons.mugSaucer,
          ),
          PreferencesModel(
            label: 'Blisko transportu publicznego',
            isSelected: false,
            icon: FontAwesomeIcons.bus,
          ),
        ]),
        budgetOption: PreferencesInput.pure([
          PreferencesModel(
            label: 'Tanie',
            isSelected: false,
            icon: FontAwesomeIcons.solidMoneyBill1,
          ),
          PreferencesModel(
            label: 'Średnie',
            isSelected: false,
            icon: FontAwesomeIcons.wallet,
          ),
          PreferencesModel(
            label: 'Luksusowe',
            isSelected: false,
            icon: FontAwesomeIcons.crown,
          ),
        ]),
        atmosphereOption: PreferencesInput.pure([
          PreferencesModel(
            label: 'Spokojne',
            isSelected: false,
            icon: FontAwesomeIcons.spa,
          ),
          PreferencesModel(
            label: 'Tętniące życiem',
            isSelected: false,
            icon: FontAwesomeIcons.music,
          ),
        ]),
        additionalNotes: AdditionalNotesInput.pure(),
        isFormValid: true,
        status: StateStatus.initial,
        result: none(),
      );
}
