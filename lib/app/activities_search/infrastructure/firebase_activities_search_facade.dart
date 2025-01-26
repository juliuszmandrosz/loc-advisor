import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/activities_core/infrastructure/activity_recommendations_dto.dart';
import 'package:loc_advisor/app/activities_search/domain/activities_search_facade.dart';
import 'package:loc_advisor/app/activities_search/domain/activities_search_failure.dart';
import 'package:loc_advisor/app/activities_search/domain/entities/activity_request_entity.dart';
import 'package:loc_advisor/app/activities_search/infrastructure/activity_request_dto.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ActivitiesSearchFacade)
class FirebaseActivitiesSearchFacade implements ActivitiesSearchFacade {
  final FirebaseFunctions _firebaseFunctions;
  final Logger _logger;

  FirebaseActivitiesSearchFacade(
    this._firebaseFunctions,
    this._logger,
  );

  @override
  Future<Either<ActivitiesSearchFailure, ActivityRecommendations>>
      getActivityRecommendations(ActivityRequest request) async {
    try {
      final func =
          _firebaseFunctions.httpsCallable('getActivityRecommendations');

      final response =
          await func.call(ActivityRequestDto.fromDomain(request).toJson());

      final result =
          ActivityRecommendationsDto.fromApi(response.data).toDomain();

      return right(result);
    } on Exception catch (e) {
      _logger.e(e);
      return left(ActivitiesSearchFailure.unexpected());
    }
  }
}
