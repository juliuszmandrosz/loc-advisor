// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccommodationDtoImpl _$$AccommodationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccommodationDtoImpl(
      placeName: json['placeName'] as String,
      description: json['description'] as String,
      localVibe: json['localVibe'] as String,
      safetyTips: json['safetyTips'] as String,
      transportTips: json['transportTips'] as String,
      budgetTips: json['budgetTips'] as String,
    );

Map<String, dynamic> _$$AccommodationDtoImplToJson(
        _$AccommodationDtoImpl instance) =>
    <String, dynamic>{
      'placeName': instance.placeName,
      'description': instance.description,
      'localVibe': instance.localVibe,
      'safetyTips': instance.safetyTips,
      'transportTips': instance.transportTips,
      'budgetTips': instance.budgetTips,
    };
