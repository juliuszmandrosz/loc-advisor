// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityDtoImpl _$$ActivityDtoImplFromJson(Map<String, dynamic> json) =>
    _$ActivityDtoImpl(
      placeName: json['placeName'] as String,
      description: json['description'] as String,
      bestTimeToVisit: json['bestTimeToVisit'] as String,
      safetyTips: json['safetyTips'] as String,
      combinationTips: json['combinationTips'] as String,
      budgetTips: json['budgetTips'] as String,
    );

Map<String, dynamic> _$$ActivityDtoImplToJson(_$ActivityDtoImpl instance) =>
    <String, dynamic>{
      'placeName': instance.placeName,
      'description': instance.description,
      'bestTimeToVisit': instance.bestTimeToVisit,
      'safetyTips': instance.safetyTips,
      'combinationTips': instance.combinationTips,
      'budgetTips': instance.budgetTips,
    };
