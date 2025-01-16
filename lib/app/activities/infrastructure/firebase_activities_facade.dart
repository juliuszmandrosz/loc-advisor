import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities/domain/activities_facade.dart';
import 'package:loc_advisor/app/activities/domain/activities_failure.dart';
import 'package:loc_advisor/app/activities/domain/entities/activity_request_entity.dart';

@LazySingleton(as: ActivitiesFacade)
class FirebaseActivitiesFacade implements ActivitiesFacade {
  @override
  Future<Either<ActivitiesFailure, Unit>> getActivityRecommendations(
    ActivityRequest request,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return right(unit);
  }
}
