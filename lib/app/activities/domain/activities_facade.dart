import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/activities/domain/activities_failure.dart';
import 'package:loc_advisor/app/activities/domain/entities/activity_request_entity.dart';

abstract class ActivitiesFacade {
  Future<Either<ActivitiesFailure, Unit>> getActivityRecommendations(
    ActivityRequest request,
  );
}
