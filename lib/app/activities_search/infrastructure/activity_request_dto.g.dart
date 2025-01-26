// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityRequestDtoImpl _$$ActivityRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityRequestDtoImpl(
      destination: json['destination'] as String,
      activityPreferences: (json['activityPreferences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateOption: json['dateOption'] as String,
      budgetOption: json['budgetOption'] as String,
      atmosphereOption: json['atmosphereOption'] as String,
      additionalNotes: json['additionalNotes'] as String,
      userId: json['userId'] as String?,
      createdAt:
          const FirebaseTimestampJsonConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$ActivityRequestDtoImplToJson(
        _$ActivityRequestDtoImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'activityPreferences': instance.activityPreferences,
      'dateOption': instance.dateOption,
      'budgetOption': instance.budgetOption,
      'atmosphereOption': instance.atmosphereOption,
      'additionalNotes': instance.additionalNotes,
      'userId': instance.userId,
      'createdAt': _$JsonConverterToJson<dynamic, DateTime>(
          instance.createdAt, const FirebaseTimestampJsonConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
