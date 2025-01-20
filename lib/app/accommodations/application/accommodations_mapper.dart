import 'package:loc_advisor/app/accommodations/application/accommodations_search_cubit.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';

class AccommodationsMapper {
  static AccommodationRequest mapToRequest(AccommodationsSearchState state) {
    return AccommodationRequest(
      destination: state.destination.value,
      locationPreferences: state.locationPreferences.value
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
