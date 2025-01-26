import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_failure.dart';
import 'package:loc_advisor/app/accommodations_search/domain/entities/accommodation_request_entity.dart';

abstract class AccommodationsSearchFacade {
  Future<Either<AccommodationsSearchFailure, AccommodationRecommendations>>
      getAccommodationRecommendations(AccommodationRequest request);
}
