import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/generate_recommendations/domain/recommendation_entity.dart';
import 'package:loc_advisor/generate_recommendations/domain/recommendation_facade.dart';
import 'package:loc_advisor/generate_recommendations/domain/recommendation_failure.dart';

@LazySingleton(as: RecommendationFacade)
class FirebaseRecommendationFacade implements RecommendationFacade {
  @override
  Future<Either<RecommendationFailure, Recommendation>> generateRecommendation() {
    throw UnimplementedError();
  }
}