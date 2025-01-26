import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_core/infrastructure/accommodation_recommendations_dto.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_facade.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_failure.dart';
import 'package:loc_advisor/app/accommodations_search/domain/entities/accommodation_request_entity.dart';
import 'package:loc_advisor/app/accommodations_search/infrastructure/dto/accommodation_request.dto.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AccommodationsSearchFacade)
class FirebaseAccommodationsSearchFacade implements AccommodationsSearchFacade {
  final FirebaseFunctions _firebaseFunctions;
  final Logger _logger;

  FirebaseAccommodationsSearchFacade(
    this._firebaseFunctions,
    this._logger,
  );

  @override
  Future<Either<AccommodationsSearchFailure, AccommodationRecommendations>>
      getAccommodationRecommendations(AccommodationRequest request) async {
    try {
      final func =
          _firebaseFunctions.httpsCallable('getAccommodationRecommendations');

      final response =
          await func.call(AccommodationRequestDto.fromDomain(request).toJson());

      final result =
          AccommodationRecommendationsDto.fromApi(response.data).toDomain();

      return right(result);
    } on Exception catch (e) {
      _logger.e(e);
      return left(AccommodationsSearchFailure.unexpected());
    }
  }
}
