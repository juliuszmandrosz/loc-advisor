// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccommodationDto _$AccommodationDtoFromJson(Map<String, dynamic> json) {
  return _AccommodationDto.fromJson(json);
}

/// @nodoc
mixin _$AccommodationDto {
  String get placeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get localVibe => throw _privateConstructorUsedError;
  String get safetyTips => throw _privateConstructorUsedError;
  String get transportTips => throw _privateConstructorUsedError;
  String get budgetTips => throw _privateConstructorUsedError;

  /// Serializes this AccommodationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationDtoCopyWith<AccommodationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationDtoCopyWith<$Res> {
  factory $AccommodationDtoCopyWith(
          AccommodationDto value, $Res Function(AccommodationDto) then) =
      _$AccommodationDtoCopyWithImpl<$Res, AccommodationDto>;
  @useResult
  $Res call(
      {String placeName,
      String description,
      String localVibe,
      String safetyTips,
      String transportTips,
      String budgetTips});
}

/// @nodoc
class _$AccommodationDtoCopyWithImpl<$Res, $Val extends AccommodationDto>
    implements $AccommodationDtoCopyWith<$Res> {
  _$AccommodationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
    Object? description = null,
    Object? localVibe = null,
    Object? safetyTips = null,
    Object? transportTips = null,
    Object? budgetTips = null,
  }) {
    return _then(_value.copyWith(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      localVibe: null == localVibe
          ? _value.localVibe
          : localVibe // ignore: cast_nullable_to_non_nullable
              as String,
      safetyTips: null == safetyTips
          ? _value.safetyTips
          : safetyTips // ignore: cast_nullable_to_non_nullable
              as String,
      transportTips: null == transportTips
          ? _value.transportTips
          : transportTips // ignore: cast_nullable_to_non_nullable
              as String,
      budgetTips: null == budgetTips
          ? _value.budgetTips
          : budgetTips // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationDtoImplCopyWith<$Res>
    implements $AccommodationDtoCopyWith<$Res> {
  factory _$$AccommodationDtoImplCopyWith(_$AccommodationDtoImpl value,
          $Res Function(_$AccommodationDtoImpl) then) =
      __$$AccommodationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeName,
      String description,
      String localVibe,
      String safetyTips,
      String transportTips,
      String budgetTips});
}

/// @nodoc
class __$$AccommodationDtoImplCopyWithImpl<$Res>
    extends _$AccommodationDtoCopyWithImpl<$Res, _$AccommodationDtoImpl>
    implements _$$AccommodationDtoImplCopyWith<$Res> {
  __$$AccommodationDtoImplCopyWithImpl(_$AccommodationDtoImpl _value,
      $Res Function(_$AccommodationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
    Object? description = null,
    Object? localVibe = null,
    Object? safetyTips = null,
    Object? transportTips = null,
    Object? budgetTips = null,
  }) {
    return _then(_$AccommodationDtoImpl(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      localVibe: null == localVibe
          ? _value.localVibe
          : localVibe // ignore: cast_nullable_to_non_nullable
              as String,
      safetyTips: null == safetyTips
          ? _value.safetyTips
          : safetyTips // ignore: cast_nullable_to_non_nullable
              as String,
      transportTips: null == transportTips
          ? _value.transportTips
          : transportTips // ignore: cast_nullable_to_non_nullable
              as String,
      budgetTips: null == budgetTips
          ? _value.budgetTips
          : budgetTips // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AccommodationDtoImpl extends _AccommodationDto {
  const _$AccommodationDtoImpl(
      {required this.placeName,
      required this.description,
      required this.localVibe,
      required this.safetyTips,
      required this.transportTips,
      required this.budgetTips})
      : super._();

  factory _$AccommodationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccommodationDtoImplFromJson(json);

  @override
  final String placeName;
  @override
  final String description;
  @override
  final String localVibe;
  @override
  final String safetyTips;
  @override
  final String transportTips;
  @override
  final String budgetTips;

  @override
  String toString() {
    return 'AccommodationDto(placeName: $placeName, description: $description, localVibe: $localVibe, safetyTips: $safetyTips, transportTips: $transportTips, budgetTips: $budgetTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationDtoImpl &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.localVibe, localVibe) ||
                other.localVibe == localVibe) &&
            (identical(other.safetyTips, safetyTips) ||
                other.safetyTips == safetyTips) &&
            (identical(other.transportTips, transportTips) ||
                other.transportTips == transportTips) &&
            (identical(other.budgetTips, budgetTips) ||
                other.budgetTips == budgetTips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeName, description,
      localVibe, safetyTips, transportTips, budgetTips);

  /// Create a copy of AccommodationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationDtoImplCopyWith<_$AccommodationDtoImpl> get copyWith =>
      __$$AccommodationDtoImplCopyWithImpl<_$AccommodationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccommodationDtoImplToJson(
      this,
    );
  }
}

abstract class _AccommodationDto extends AccommodationDto {
  const factory _AccommodationDto(
      {required final String placeName,
      required final String description,
      required final String localVibe,
      required final String safetyTips,
      required final String transportTips,
      required final String budgetTips}) = _$AccommodationDtoImpl;
  const _AccommodationDto._() : super._();

  factory _AccommodationDto.fromJson(Map<String, dynamic> json) =
      _$AccommodationDtoImpl.fromJson;

  @override
  String get placeName;
  @override
  String get description;
  @override
  String get localVibe;
  @override
  String get safetyTips;
  @override
  String get transportTips;
  @override
  String get budgetTips;

  /// Create a copy of AccommodationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationDtoImplCopyWith<_$AccommodationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
