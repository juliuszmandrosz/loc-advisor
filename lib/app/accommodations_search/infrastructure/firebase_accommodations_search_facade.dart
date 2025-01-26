import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations_core/domain/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/accommodations_core/infrastructure/accommodation_recommendations_dto.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_facade.dart';
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_failure.dart';
import 'package:loc_advisor/app/accommodations_search/domain/entities/accommodation_request_entity.dart';
import 'package:loc_advisor/app/accommodations_search/infrastructure/dto/accommodation_request.dto.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AccommodationsSearchFacade)
class FirebaseAccommodationsSearchFacade implements AccommodationsSearchFacade {
  final FirebaseFunctions _firebaseFunctions;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final Logger _logger;

  FirebaseAccommodationsSearchFacade(
    this._firebaseFunctions,
    this._logger,
    this._auth,
    this._firestore,
  );

  @override
  Future<Either<AccommodationsSearchFailure, AccommodationRecommendations>>
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
      return left(AccommodationsSearchFailure.unexpected());
    }
  }

  @override
  Future<
      Either<AccommodationsSearchFailure,
          List<AccommodationRecommendations>>> fetchAccommodations(
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
      return left(AccommodationsSearchFailure.unexpected());
    }
  }
}
