// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation_recommendations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccommodationRecommendationsDtoImpl
    _$$AccommodationRecommendationsDtoImplFromJson(Map<String, dynamic> json) =>
        _$AccommodationRecommendationsDtoImpl(
          locations: (json['locations'] as List<dynamic>)
              .map((e) => AccommodationDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          destination: json['destination'] as String,
          additionalNotes: json['additionalNotes'] as String,
          accommodationRequestId: json['accommodationRequestId'] as String,
          userId: json['userId'] as String?,
          createdAt: const FirebaseTimestampJsonConverter()
              .fromJson(json['createdAt']),
        );

Map<String, dynamic> _$$AccommodationRecommendationsDtoImplToJson(
        _$AccommodationRecommendationsDtoImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations.map((e) => e.toJson()).toList(),
      'destination': instance.destination,
      'additionalNotes': instance.additionalNotes,
      'accommodationRequestId': instance.accommodationRequestId,
      'userId': instance.userId,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
