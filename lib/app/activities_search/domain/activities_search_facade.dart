import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/activities_search/domain/activities_search_failure.dart';
import 'package:loc_advisor/app/activities_search/domain/entities/activity_request_entity.dart';

abstract class ActivitiesSearchFacade {
  Future<Either<ActivitiesSearchFailure, Unit>> getActivityRecommendations(
    ActivityRequest request,
  );
}
