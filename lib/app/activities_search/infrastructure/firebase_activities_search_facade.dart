import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities_search/domain/activities_search_facade.dart';
import 'package:loc_advisor/app/activities_search/domain/activities_search_failure.dart';
import 'package:loc_advisor/app/activities_search/domain/entities/activity_request_entity.dart';

@LazySingleton(as: ActivitiesSearchFacade)
class FirebaseActivitiesSearchFacade implements ActivitiesSearchFacade {
  @override
  Future<Either<ActivitiesSearchFailure, Unit>> getActivityRecommendations(
    ActivityRequest request,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return right(unit);
  }
}
