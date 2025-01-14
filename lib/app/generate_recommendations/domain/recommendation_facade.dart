import 'package:dartz/dartz.dart';
import 'package:loc_advisor/app/generate_recommendations/domain/recommendation_entity.dart';
import 'package:loc_advisor/app/generate_recommendations/domain/recommendation_failure.dart';

abstract class RecommendationFacade {
  Future<Either<RecommendationFailure, Recommendation>> generateRecommendation();
}