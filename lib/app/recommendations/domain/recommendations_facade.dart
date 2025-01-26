import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/domain/recommendations_failure.dart';

abstract class RecommendationsFacade {
  Future<Either<RecommendationsFailure, List<AccommodationRecommendations>>>
      fetchAccommodations(
    String destination, {
    int pageSize = 20,
    AccommodationRecommendations? lastRecommendation,
  });

  Future<Either<RecommendationsFailure, List<ActivityRecommendations>>>
      fetchActivities(
    String destination, {
    int pageSize = 20,
    ActivityRecommendations? lastRecommendation,
  });
}
