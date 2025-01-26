import 'package:loc_advisor/app/activities_search/application/activities_search_cubit.dart';
import 'package:loc_advisor/app/activities_search/domain/entities/activity_request_entity.dart';

class ActivitiesRequestMapper {
  static ActivityRequest mapToRequest(ActivitiesSearchState state) {
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
