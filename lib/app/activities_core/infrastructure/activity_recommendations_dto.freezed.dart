// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_recommendations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityRecommendationsDto _$ActivityRecommendationsDtoFromJson(
    Map<String, dynamic> json) {
  return _ActivityRecommendationsDto.fromJson(json);
}

/// @nodoc
mixin _$ActivityRecommendationsDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  List<ActivityDto> get activities => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;
  String get requestId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ActivityRecommendationsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityRecommendationsDtoCopyWith<ActivityRecommendationsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityRecommendationsDtoCopyWith<$Res> {
  factory $ActivityRecommendationsDtoCopyWith(ActivityRecommendationsDto value,
          $Res Function(ActivityRecommendationsDto) then) =
      _$ActivityRecommendationsDtoCopyWithImpl<$Res,
          ActivityRecommendationsDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      List<ActivityDto> activities,
      String destination,
      String additionalNotes,
      String requestId,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class _$ActivityRecommendationsDtoCopyWithImpl<$Res,
        $Val extends ActivityRecommendationsDto>
    implements $ActivityRecommendationsDtoCopyWith<$Res> {
  _$ActivityRecommendationsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? activities = null,
    Object? destination = null,
    Object? additionalNotes = null,
    Object? requestId = null,
    Object? userId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityDto>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ActivityRecommendationsDtoImplCopyWith<$Res>
    implements $ActivityRecommendationsDtoCopyWith<$Res> {
  factory _$$ActivityRecommendationsDtoImplCopyWith(
          _$ActivityRecommendationsDtoImpl value,
          $Res Function(_$ActivityRecommendationsDtoImpl) then) =
      __$$ActivityRecommendationsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      List<ActivityDto> activities,
      String destination,
      String additionalNotes,
      String requestId,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class __$$ActivityRecommendationsDtoImplCopyWithImpl<$Res>
    extends _$ActivityRecommendationsDtoCopyWithImpl<$Res,
        _$ActivityRecommendationsDtoImpl>
    implements _$$ActivityRecommendationsDtoImplCopyWith<$Res> {
  __$$ActivityRecommendationsDtoImplCopyWithImpl(
      _$ActivityRecommendationsDtoImpl _value,
      $Res Function(_$ActivityRecommendationsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? activities = null,
    Object? destination = null,
    Object? additionalNotes = null,
    Object? requestId = null,
    Object? userId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ActivityRecommendationsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityDto>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
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
class _$ActivityRecommendationsDtoImpl extends _ActivityRecommendationsDto {
  const _$ActivityRecommendationsDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required final List<ActivityDto> activities,
      required this.destination,
      required this.additionalNotes,
      required this.requestId,
      this.userId,
      @FirebaseTimestampJsonConverter() required this.createdAt})
      : _activities = activities,
        super._();

  factory _$ActivityRecommendationsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ActivityRecommendationsDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  final List<ActivityDto> _activities;
  @override
  List<ActivityDto> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final String destination;
  @override
  final String additionalNotes;
  @override
  final String requestId;
  @override
  final String? userId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'ActivityRecommendationsDto(id: $id, activities: $activities, destination: $destination, additionalNotes: $additionalNotes, requestId: $requestId, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityRecommendationsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_activities),
      destination,
      additionalNotes,
      requestId,
      userId,
      createdAt);

  /// Create a copy of ActivityRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityRecommendationsDtoImplCopyWith<_$ActivityRecommendationsDtoImpl>
      get copyWith => __$$ActivityRecommendationsDtoImplCopyWithImpl<
          _$ActivityRecommendationsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityRecommendationsDtoImplToJson(
      this,
    );
  }
}

abstract class _ActivityRecommendationsDto extends ActivityRecommendationsDto {
  const factory _ActivityRecommendationsDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final List<ActivityDto> activities,
      required final String destination,
      required final String additionalNotes,
      required final String requestId,
      final String? userId,
      @FirebaseTimestampJsonConverter()
      required final DateTime createdAt}) = _$ActivityRecommendationsDtoImpl;
  const _ActivityRecommendationsDto._() : super._();

  factory _ActivityRecommendationsDto.fromJson(Map<String, dynamic> json) =
      _$ActivityRecommendationsDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  List<ActivityDto> get activities;
  @override
  String get destination;
  @override
  String get additionalNotes;
  @override
  String get requestId;
  @override
  String? get userId;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;

  /// Create a copy of ActivityRecommendationsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityRecommendationsDtoImplCopyWith<_$ActivityRecommendationsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
