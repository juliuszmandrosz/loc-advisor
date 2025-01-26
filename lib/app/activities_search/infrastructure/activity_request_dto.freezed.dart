// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityRequestDto _$ActivityRequestDtoFromJson(Map<String, dynamic> json) {
  return _ActivityRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ActivityRequestDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<String> get activityPreferences => throw _privateConstructorUsedError;
  String get dateOption => throw _privateConstructorUsedError;
  String get budgetOption => throw _privateConstructorUsedError;
  String get atmosphereOption => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ActivityRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityRequestDtoCopyWith<ActivityRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityRequestDtoCopyWith<$Res> {
  factory $ActivityRequestDtoCopyWith(
          ActivityRequestDto value, $Res Function(ActivityRequestDto) then) =
      _$ActivityRequestDtoCopyWithImpl<$Res, ActivityRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String destination,
      List<String> activityPreferences,
      String dateOption,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime? createdAt});
}

/// @nodoc
class _$ActivityRequestDtoCopyWithImpl<$Res, $Val extends ActivityRequestDto>
    implements $ActivityRequestDtoCopyWith<$Res> {
  _$ActivityRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? destination = null,
    Object? activityPreferences = null,
    Object? dateOption = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      activityPreferences: null == activityPreferences
          ? _value.activityPreferences
          : activityPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOption: null == dateOption
          ? _value.dateOption
          : dateOption // ignore: cast_nullable_to_non_nullable
              as String,
      budgetOption: null == budgetOption
          ? _value.budgetOption
          : budgetOption // ignore: cast_nullable_to_non_nullable
              as String,
      atmosphereOption: null == atmosphereOption
          ? _value.atmosphereOption
          : atmosphereOption // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityRequestDtoImplCopyWith<$Res>
    implements $ActivityRequestDtoCopyWith<$Res> {
  factory _$$ActivityRequestDtoImplCopyWith(_$ActivityRequestDtoImpl value,
          $Res Function(_$ActivityRequestDtoImpl) then) =
      __$$ActivityRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String destination,
      List<String> activityPreferences,
      String dateOption,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes,
      String? userId,
      @FirebaseTimestampJsonConverter() DateTime? createdAt});
}

/// @nodoc
class __$$ActivityRequestDtoImplCopyWithImpl<$Res>
    extends _$ActivityRequestDtoCopyWithImpl<$Res, _$ActivityRequestDtoImpl>
    implements _$$ActivityRequestDtoImplCopyWith<$Res> {
  __$$ActivityRequestDtoImplCopyWithImpl(_$ActivityRequestDtoImpl _value,
      $Res Function(_$ActivityRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? destination = null,
    Object? activityPreferences = null,
    Object? dateOption = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ActivityRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      activityPreferences: null == activityPreferences
          ? _value._activityPreferences
          : activityPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOption: null == dateOption
          ? _value.dateOption
          : dateOption // ignore: cast_nullable_to_non_nullable
              as String,
      budgetOption: null == budgetOption
          ? _value.budgetOption
          : budgetOption // ignore: cast_nullable_to_non_nullable
              as String,
      atmosphereOption: null == atmosphereOption
          ? _value.atmosphereOption
          : atmosphereOption // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ActivityRequestDtoImpl extends _ActivityRequestDto {
  const _$ActivityRequestDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.destination,
      required final List<String> activityPreferences,
      required this.dateOption,
      required this.budgetOption,
      required this.atmosphereOption,
      required this.additionalNotes,
      this.userId,
      @FirebaseTimestampJsonConverter() this.createdAt})
      : _activityPreferences = activityPreferences,
        super._();

  factory _$ActivityRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityRequestDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String destination;
  final List<String> _activityPreferences;
  @override
  List<String> get activityPreferences {
    if (_activityPreferences is EqualUnmodifiableListView)
      return _activityPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityPreferences);
  }

  @override
  final String dateOption;
  @override
  final String budgetOption;
  @override
  final String atmosphereOption;
  @override
  final String additionalNotes;
  @override
  final String? userId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ActivityRequestDto(id: $id, destination: $destination, activityPreferences: $activityPreferences, dateOption: $dateOption, budgetOption: $budgetOption, atmosphereOption: $atmosphereOption, additionalNotes: $additionalNotes, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._activityPreferences, _activityPreferences) &&
            (identical(other.dateOption, dateOption) ||
                other.dateOption == dateOption) &&
            (identical(other.budgetOption, budgetOption) ||
                other.budgetOption == budgetOption) &&
            (identical(other.atmosphereOption, atmosphereOption) ||
                other.atmosphereOption == atmosphereOption) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      destination,
      const DeepCollectionEquality().hash(_activityPreferences),
      dateOption,
      budgetOption,
      atmosphereOption,
      additionalNotes,
      userId,
      createdAt);

  /// Create a copy of ActivityRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityRequestDtoImplCopyWith<_$ActivityRequestDtoImpl> get copyWith =>
      __$$ActivityRequestDtoImplCopyWithImpl<_$ActivityRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ActivityRequestDto extends ActivityRequestDto {
  const factory _ActivityRequestDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String destination,
      required final List<String> activityPreferences,
      required final String dateOption,
      required final String budgetOption,
      required final String atmosphereOption,
      required final String additionalNotes,
      final String? userId,
      @FirebaseTimestampJsonConverter()
      final DateTime? createdAt}) = _$ActivityRequestDtoImpl;
  const _ActivityRequestDto._() : super._();

  factory _ActivityRequestDto.fromJson(Map<String, dynamic> json) =
      _$ActivityRequestDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get destination;
  @override
  List<String> get activityPreferences;
  @override
  String get dateOption;
  @override
  String get budgetOption;
  @override
  String get atmosphereOption;
  @override
  String get additionalNotes;
  @override
  String? get userId;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime? get createdAt;

  /// Create a copy of ActivityRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityRequestDtoImplCopyWith<_$ActivityRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
