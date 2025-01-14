// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendationDto _$RecommendationDtoFromJson(Map<String, dynamic> json) {
  return _RecommendationDto.fromJson(json);
}

/// @nodoc
mixin _$RecommendationDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get recommendation => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RecommendationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationDtoCopyWith<RecommendationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationDtoCopyWith<$Res> {
  factory $RecommendationDtoCopyWith(
          RecommendationDto value, $Res Function(RecommendationDto) then) =
      _$RecommendationDtoCopyWithImpl<$Res, RecommendationDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String location,
      String recommendation,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class _$RecommendationDtoCopyWithImpl<$Res, $Val extends RecommendationDto>
    implements $RecommendationDtoCopyWith<$Res> {
  _$RecommendationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = null,
    Object? recommendation = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationDtoImplCopyWith<$Res>
    implements $RecommendationDtoCopyWith<$Res> {
  factory _$$RecommendationDtoImplCopyWith(_$RecommendationDtoImpl value,
          $Res Function(_$RecommendationDtoImpl) then) =
      __$$RecommendationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String location,
      String recommendation,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class __$$RecommendationDtoImplCopyWithImpl<$Res>
    extends _$RecommendationDtoCopyWithImpl<$Res, _$RecommendationDtoImpl>
    implements _$$RecommendationDtoImplCopyWith<$Res> {
  __$$RecommendationDtoImplCopyWithImpl(_$RecommendationDtoImpl _value,
      $Res Function(_$RecommendationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? location = null,
    Object? recommendation = null,
    Object? createdAt = null,
  }) {
    return _then(_$RecommendationDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$RecommendationDtoImpl extends _RecommendationDto {
  const _$RecommendationDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.location,
      required this.recommendation,
      @FirebaseTimestampJsonConverter() required this.createdAt})
      : super._();

  factory _$RecommendationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String location;
  @override
  final String recommendation;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'RecommendationDto(id: $id, location: $location, recommendation: $recommendation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, location, recommendation, createdAt);

  /// Create a copy of RecommendationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationDtoImplCopyWith<_$RecommendationDtoImpl> get copyWith =>
      __$$RecommendationDtoImplCopyWithImpl<_$RecommendationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationDtoImplToJson(
      this,
    );
  }
}

abstract class _RecommendationDto extends RecommendationDto {
  const factory _RecommendationDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String location,
      required final String recommendation,
      @FirebaseTimestampJsonConverter()
      required final DateTime createdAt}) = _$RecommendationDtoImpl;
  const _RecommendationDto._() : super._();

  factory _RecommendationDto.fromJson(Map<String, dynamic> json) =
      _$RecommendationDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get location;
  @override
  String get recommendation;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;

  /// Create a copy of RecommendationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationDtoImplCopyWith<_$RecommendationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
