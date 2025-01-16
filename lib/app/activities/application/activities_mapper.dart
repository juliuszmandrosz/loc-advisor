import 'package:loc_advisor/app/activities/application/activities_cubit.dart';
import 'package:loc_advisor/app/activities/domain/entities/activity_request_entity.dart';

class ActivitiesMapper {
  static ActivityRequest mapToRequest(ActivitiesState state) {
    return ActivityRequest(
      destination: state.destination.value,
      dateOption: state.dateOption.value
          .firstWhere((option) => option.isSelected)
          .label,
      activityPreferences: state.activityPreferences.value
          .where((preference) => preference.isSelected)
          .map((preference) => preference.label)
          .toList(),
      budgetOption: state.budgetOption.value
          .firstWhere((option) => option.isSelected)
          .label,
      atmosphereOption: state.atmosphereOption.value
          .firstWhere((option) => option.isSelected)
          .label,
      additionalNotes: state.additionalNotes.value,
    );
  }
}
