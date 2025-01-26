import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_failure.dart';

abstract class RecommendationsFacade {
  Future<
      Either<AccommodationsSearchFailure,
          List<AccommodationRecommendations>>> fetchAccommodations(
    String destination, {
    int pageSize = 20,
    AccommodationRecommendations? lastRecommendation,
  });
}
