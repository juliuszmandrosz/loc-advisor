import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_failure.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';

abstract class AccommodationsFacade {
  Future<Either<AccommodationsFailure, Unit>> getAccommodationRecommendations(
    AccommodationRequest request,
  );
}
