// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation_request.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccommodationRequestDtoImpl _$$AccommodationRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccommodationRequestDtoImpl(
      destination: json['destination'] as String,
      locationPreferences: (json['locationPreferences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      budgetOption: json['budgetOption'] as String,
      atmosphereOption: json['atmosphereOption'] as String,
      additionalNotes: json['additionalNotes'] as String,
      userId: json['userId'] as String?,
      createdAt:
          const FirebaseTimestampJsonConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$AccommodationRequestDtoImplToJson(
        _$AccommodationRequestDtoImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'locationPreferences': instance.locationPreferences,
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
