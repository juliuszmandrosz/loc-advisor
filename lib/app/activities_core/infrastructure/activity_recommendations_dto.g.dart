// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_recommendations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityRecommendationsDtoImpl _$$ActivityRecommendationsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityRecommendationsDtoImpl(
      activities: (json['activities'] as List<dynamic>)
          .map((e) => ActivityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      destination: json['destination'] as String,
      additionalNotes: json['additionalNotes'] as String,
      requestId: json['requestId'] as String,
      userId: json['userId'] as String?,
      createdAt:
          const FirebaseTimestampJsonConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$ActivityRecommendationsDtoImplToJson(
        _$ActivityRecommendationsDtoImpl instance) =>
    <String, dynamic>{
      'activities': instance.activities.map((e) => e.toJson()).toList(),
      'destination': instance.destination,
      'additionalNotes': instance.additionalNotes,
      'requestId': instance.requestId,
      'userId': instance.userId,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
