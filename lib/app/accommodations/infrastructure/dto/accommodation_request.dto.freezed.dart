// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_request.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccommodationRequestDto _$AccommodationRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _AccommodationRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AccommodationRequestDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<String> get locationPreferences => throw _privateConstructorUsedError;
  String get budgetOption => throw _privateConstructorUsedError;
  String get atmosphereOption => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AccommodationRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationRequestDtoCopyWith<AccommodationRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationRequestDtoCopyWith<$Res> {
  factory $AccommodationRequestDtoCopyWith(AccommodationRequestDto value,
          $Res Function(AccommodationRequestDto) then) =
      _$AccommodationRequestDtoCopyWithImpl<$Res, AccommodationRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String destination,
      List<String> locationPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes,
      @FirebaseTimestampJsonConverter() DateTime? createdAt});
}

/// @nodoc
class _$AccommodationRequestDtoCopyWithImpl<$Res,
        $Val extends AccommodationRequestDto>
    implements $AccommodationRequestDtoCopyWith<$Res> {
  _$AccommodationRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? destination = null,
    Object? locationPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
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
      locationPreferences: null == locationPreferences
          ? _value.locationPreferences
          : locationPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationRequestDtoImplCopyWith<$Res>
    implements $AccommodationRequestDtoCopyWith<$Res> {
  factory _$$AccommodationRequestDtoImplCopyWith(
          _$AccommodationRequestDtoImpl value,
          $Res Function(_$AccommodationRequestDtoImpl) then) =
      __$$AccommodationRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String destination,
      List<String> locationPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes,
      @FirebaseTimestampJsonConverter() DateTime? createdAt});
}

/// @nodoc
class __$$AccommodationRequestDtoImplCopyWithImpl<$Res>
    extends _$AccommodationRequestDtoCopyWithImpl<$Res,
        _$AccommodationRequestDtoImpl>
    implements _$$AccommodationRequestDtoImplCopyWith<$Res> {
  __$$AccommodationRequestDtoImplCopyWithImpl(
      _$AccommodationRequestDtoImpl _value,
      $Res Function(_$AccommodationRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? destination = null,
    Object? locationPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$AccommodationRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      locationPreferences: null == locationPreferences
          ? _value._locationPreferences
          : locationPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AccommodationRequestDtoImpl extends _AccommodationRequestDto {
  const _$AccommodationRequestDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.destination,
      required final List<String> locationPreferences,
      required this.budgetOption,
      required this.atmosphereOption,
      required this.additionalNotes,
      @FirebaseTimestampJsonConverter() this.createdAt})
      : _locationPreferences = locationPreferences,
        super._();

  factory _$AccommodationRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccommodationRequestDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String destination;
  final List<String> _locationPreferences;
  @override
  List<String> get locationPreferences {
    if (_locationPreferences is EqualUnmodifiableListView)
      return _locationPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationPreferences);
  }

  @override
  final String budgetOption;
  @override
  final String atmosphereOption;
  @override
  final String additionalNotes;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'AccommodationRequestDto(id: $id, destination: $destination, locationPreferences: $locationPreferences, budgetOption: $budgetOption, atmosphereOption: $atmosphereOption, additionalNotes: $additionalNotes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._locationPreferences, _locationPreferences) &&
            (identical(other.budgetOption, budgetOption) ||
                other.budgetOption == budgetOption) &&
            (identical(other.atmosphereOption, atmosphereOption) ||
                other.atmosphereOption == atmosphereOption) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      destination,
      const DeepCollectionEquality().hash(_locationPreferences),
      budgetOption,
      atmosphereOption,
      additionalNotes,
      createdAt);

  /// Create a copy of AccommodationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationRequestDtoImplCopyWith<_$AccommodationRequestDtoImpl>
      get copyWith => __$$AccommodationRequestDtoImplCopyWithImpl<
          _$AccommodationRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccommodationRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AccommodationRequestDto extends AccommodationRequestDto {
  const factory _AccommodationRequestDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String destination,
      required final List<String> locationPreferences,
      required final String budgetOption,
      required final String atmosphereOption,
      required final String additionalNotes,
      @FirebaseTimestampJsonConverter()
      final DateTime? createdAt}) = _$AccommodationRequestDtoImpl;
  const _AccommodationRequestDto._() : super._();

  factory _AccommodationRequestDto.fromJson(Map<String, dynamic> json) =
      _$AccommodationRequestDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get destination;
  @override
  List<String> get locationPreferences;
  @override
  String get budgetOption;
  @override
  String get atmosphereOption;
  @override
  String get additionalNotes;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime? get createdAt;

  /// Create a copy of AccommodationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationRequestDtoImplCopyWith<_$AccommodationRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
