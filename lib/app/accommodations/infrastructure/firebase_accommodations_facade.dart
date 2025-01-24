import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_facade.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_failure.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_request_entity.dart';
import 'package:loc_advisor/app/accommodations/infrastructure/dto/accommodation_recommendations_dto.dart';
import 'package:loc_advisor/app/accommodations/infrastructure/dto/accommodation_request.dto.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AccommodationsFacade)
class FirebaseAccommodationsFacade implements AccommodationsFacade {
  final FirebaseFunctions _firebaseFunctions;
  final Logger _logger;

  FirebaseAccommodationsFacade(this._firebaseFunctions, this._logger);

  @override
  Future<Either<AccommodationsFailure, AccommodationRecommendations>>
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
      return left(AccommodationsFailure.unexpected());
    }
  }
}
