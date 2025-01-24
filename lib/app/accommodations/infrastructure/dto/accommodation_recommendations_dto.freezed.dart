// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_recommendations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccommodationRecommendationsDto _$AccommodationRecommendationsDtoFromJson(
    Map<String, dynamic> json) {
  return _AccommodationRecommendationsDto.fromJson(json);
}

/// @nodoc
mixin _$AccommodationRecommendationsDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  List<AccommodationDto> get locations => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;
  String get accommodationRequestId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AccommodationRecommendationsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationRecommendationsDtoCopyWith<AccommodationRecommendationsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationRecommendationsDtoCopyWith<$Res> {
  factory $AccommodationRecommendationsDtoCopyWith(
          AccommodationRecommendationsDto value,
          $Res Function(AccommodationRecommendationsDto) then) =
      _$AccommodationRecommendationsDtoCopyWithImpl<$Res,
          AccommodationRecommendationsDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      List<AccommodationDto> locations,
      String destination,
      String additionalNotes,
      String accommodationRequestId,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class _$AccommodationRecommendationsDtoCopyWithImpl<$Res,
        $Val extends AccommodationRecommendationsDto>
    implements $AccommodationRecommendationsDtoCopyWith<$Res> {
  _$AccommodationRecommendationsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? locations = null,
    Object? destination = null,
    Object? additionalNotes = null,
    Object? accommodationRequestId = null,
    Object? userId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<AccommodationDto>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      accommodationRequestId: null == accommodationRequestId
          ? _value.accommodationRequestId
          : accommodationRequestId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationRecommendationsDtoImplCopyWith<$Res>
    implements $AccommodationRecommendationsDtoCopyWith<$Res> {
  factory _$$AccommodationRecommendationsDtoImplCopyWith(
          _$AccommodationRecommendationsDtoImpl value,
          $Res Function(_$AccommodationRecommendationsDtoImpl) then) =
      __$$AccommodationRecommendationsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      List<AccommodationDto> locations,
      String destination,
      String additionalNotes,
      String accommodationRequestId,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class __$$AccommodationRecommendationsDtoImplCopyWithImpl<$Res>
    extends _$AccommodationRecommendationsDtoCopyWithImpl<$Res,
        _$AccommodationRecommendationsDtoImpl>
    implements _$$AccommodationRecommendationsDtoImplCopyWith<$Res> {
  __$$AccommodationRecommendationsDtoImplCopyWithImpl(
      _$AccommodationRecommendationsDtoImpl _value,
      $Res Function(_$AccommodationRecommendationsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? locations = null,
    Object? destination = null,
    Object? additionalNotes = null,
    Object? accommodationRequestId = null,
    Object? userId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$AccommodationRecommendationsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<AccommodationDto>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      accommodationRequestId: null == accommodationRequestId
          ? _value.accommodationRequestId
          : accommodationRequestId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AccommodationRecommendationsDtoImpl
    extends _AccommodationRecommendationsDto {
  const _$AccommodationRecommendationsDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required final List<AccommodationDto> locations,
      required this.destination,
      required this.additionalNotes,
      required this.accommodationRequestId,
      this.userId,
      @FirebaseTimestampJsonConverter() required this.createdAt})
      : _locations = locations,
        super._();

  factory _$AccommodationRecommendationsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AccommodationRecommendationsDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  final List<AccommodationDto> _locations;
  @override
  List<AccommodationDto> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final String destination;
  @override
  final String additionalNotes;
  @override
  final String accommodationRequestId;
  @override
  final String? userId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'AccommodationRecommendationsDto(id: $id, locations: $locations, destination: $destination, additionalNotes: $additionalNotes, accommodationRequestId: $accommodationRequestId, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationRecommendationsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.accommodationRequestId, accommodationRequestId) ||
                other.accommodationRequestId == accommodationRequestId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_locations),
      destination,
      additionalNotes,
      accommodationRequestId,
      userId,
      createdAt);

  /// Create a copy of AccommodationRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationRecommendationsDtoImplCopyWith<
          _$AccommodationRecommendationsDtoImpl>
      get copyWith => __$$AccommodationRecommendationsDtoImplCopyWithImpl<
          _$AccommodationRecommendationsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccommodationRecommendationsDtoImplToJson(
      this,
    );
  }
}

abstract class _AccommodationRecommendationsDto
    extends AccommodationRecommendationsDto {
  const factory _AccommodationRecommendationsDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final List<AccommodationDto> locations,
      required final String destination,
      required final String additionalNotes,
      required final String accommodationRequestId,
      final String? userId,
      @FirebaseTimestampJsonConverter()
      required final DateTime
          createdAt}) = _$AccommodationRecommendationsDtoImpl;
  const _AccommodationRecommendationsDto._() : super._();

  factory _AccommodationRecommendationsDto.fromJson(Map<String, dynamic> json) =
      _$AccommodationRecommendationsDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  List<AccommodationDto> get locations;
  @override
  String get destination;
  @override
  String get additionalNotes;
  @override
  String get accommodationRequestId;
  @override
  String? get userId;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;

  /// Create a copy of AccommodationRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationRecommendationsDtoImplCopyWith<
          _$AccommodationRecommendationsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
