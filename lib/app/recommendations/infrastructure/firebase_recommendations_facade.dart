import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_core/infrastructure/accommodation_recommendations_dto.dart';
import 'package:loc_advisor/app/activities_core/domain/activity_recommendations_entity.dart';
import 'package:loc_advisor/app/recommendations/domain/recommendations_facade.dart';
import 'package:loc_advisor/app/recommendations/domain/recommendations_failure.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: RecommendationsFacade)
class FirebaseRecommendationsFacade implements RecommendationsFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final Logger _logger;

  FirebaseRecommendationsFacade(
    this._firestore,
    this._auth,
    this._logger,
  );

  @override
  Future<Either<RecommendationsFailure, List<AccommodationRecommendations>>>
      fetchAccommodations(
    String destination, {
    int pageSize = 20,
    AccommodationRecommendations? lastRecommendation,
  }) async {
    try {
      final userId = _auth.currentUser!.uid;

      var query = _firestore
          .collection('accommodation_recommendations')
          .where('userId', isEqualTo: userId);

      if (destination.isNotEmpty) {
        query = query.where(
          'destinationLowerCase',
          isEqualTo: destination.toLowerCase(),
        );
      }

      query = query.orderBy('createdAt', descending: true).limit(pageSize);

      if (lastRecommendation != null) {
        final lastDoc = await _firestore
            .collection('accommodation_recommendations')
            .doc(lastRecommendation.id)
            .get();

        query = query.startAfterDocument(lastDoc);
      }

      final querySnapshot = await query.get();

      final result = querySnapshot.docs.map(
        (doc) => AccommodationRecommendationsDto.fromFirebase(doc).toDomain(),
      );

      return right(result.toList());
    } on Exception catch (e) {
      _logger.e(e);
      return left(RecommendationsFailure.unexpected());
    }
  }

  @override
  Future<Either<RecommendationsFailure, List<ActivityRecommendations>>>
      fetchActivities(
    String destination, {
    int pageSize = 20,
    ActivityRecommendations? lastRecommendation,
  }) {
    throw UnimplementedError();
  }
}
