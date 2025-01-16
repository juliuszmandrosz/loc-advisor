part of 'activities_cubit.dart';

@freezed
class ActivitiesState with _$ActivitiesState {
  const factory ActivitiesState({
    required DestinationInput destination,
    required PreferencesInput dateOption,
    required PreferencesInput activityPreferences,
    required PreferencesInput budgetOption,
    required PreferencesInput atmosphereOption,
    required AdditionalNotesInput additionalNotes,
    required bool isFormValid,
    required StateStatus status,
  }) = _ActivitiesState;

  factory ActivitiesState.initial() => ActivitiesState(
        destination: DestinationInput.pure(),
        dateOption: PreferencesInput.pure([
          PreferencesModel(
            label: 'Na dzisiaj',
            isSelected: false,
            icon: FontAwesomeIcons.calendarDay,
          ),
          PreferencesModel(
            label: 'Na później',
            isSelected: false,
            icon: FontAwesomeIcons.calendarDays,
          ),
        ]),
        activityPreferences: PreferencesInput.pure([
          PreferencesModel(
            label: 'Jedzenie',
            isSelected: false,
            icon: FontAwesomeIcons.utensils,
          ),
          PreferencesModel(
            label: 'Życie nocne',
            isSelected: false,
            icon: FontAwesomeIcons.music,
          ),
          PreferencesModel(
            label: 'Relaks',
            isSelected: false,
            icon: FontAwesomeIcons.spa,
          ),
          PreferencesModel(
            label: 'Ukryte perełki',
            isSelected: false,
            icon: FontAwesomeIcons.gem,
          ),
          PreferencesModel(
            label: 'Natura',
            isSelected: false,
            icon: FontAwesomeIcons.tree,
          ),
          PreferencesModel(
            label: 'Sport',
            isSelected: false,
            icon: FontAwesomeIcons.dumbbell,
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
      );
}
