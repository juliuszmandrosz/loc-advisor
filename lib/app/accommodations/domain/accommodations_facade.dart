import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_failure.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';

abstract class AccommodationsFacade {
  Future<Either<AccommodationsFailure, AccommodationRecommendations>>
      getAccommodationRecommendations(AccommodationRequest request);

  Future<Either<AccommodationsFailure, List<AccommodationRecommendations>>>
      fetchAccommodations(
    String destination, {
    int pageSize = 20,
    AccommodationRecommendations? lastRecommendation,
  });
}
