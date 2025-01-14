import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loc_advisor/converters/firebase_timestamp_json_converter.dart';
import 'package:loc_advisor/generate_recommendations/domain/recommendation_entity.dart';

part 'recommendation_dto.freezed.dart';
part 'recommendation_dto.g.dart';


@freezed
class RecommendationDto with _$RecommendationDto {
  const RecommendationDto._();

  @JsonSerializable()
  const factory RecommendationDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String location,
    required String recommendation,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _RecommendationDto;

  factory RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendationDtoFromJson(json);

  factory RecommendationDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return RecommendationDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory RecommendationDto.fromDomain(Recommendation recommendation) {
    return RecommendationDto(
      id: recommendation.id,
      location: recommendation.location,
      recommendation: recommendation.recommendation,
      createdAt: DateTime.now(),
    );
  }

  Recommendation toDomain() {
    return Recommendation(
      id: id!,
      location: location,
      recommendation: recommendation
    );
  }
}
