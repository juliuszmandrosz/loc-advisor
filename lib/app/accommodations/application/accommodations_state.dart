part of 'accommodations_cubit.dart';

@freezed
class AccommodationsState with _$AccommodationsState {
  const factory AccommodationsState({
    required DestinationInput destination,
    required PreferencesInput locationPreferences,
    required PreferencesInput budgetOptions,
    required PreferencesInput atmosphereOptions,
    required AdditionalNotesInput additionalNotes,
    required bool isFormValid,
    required StateStatus status,
  }) = _AccommodationsState;

  factory AccommodationsState.initial() => AccommodationsState(
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
        budgetOptions: PreferencesInput.pure([
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
        atmosphereOptions: PreferencesInput.pure([
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
      );
}
