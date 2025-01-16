import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_facade.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_failure.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';

@LazySingleton(as: AccommodationsFacade)
class FirebaseAccommodationsFacade implements AccommodationsFacade {
  @override
  Future<Either<AccommodationsFailure, Unit>> getAccommodationRecommendations(
    AccommodationRequest request,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return right(unit);
  }
}
