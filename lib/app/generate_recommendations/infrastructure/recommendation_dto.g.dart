// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendationDtoImpl _$$RecommendationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationDtoImpl(
      location: json['location'] as String,
      recommendation: json['recommendation'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$RecommendationDtoImplToJson(
        _$RecommendationDtoImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'recommendation': instance.recommendation,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
