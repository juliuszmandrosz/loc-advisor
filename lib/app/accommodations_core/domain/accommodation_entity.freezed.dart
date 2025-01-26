// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Accommodation {
  String get placeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get localVibe => throw _privateConstructorUsedError;
  String get safetyTips => throw _privateConstructorUsedError;
  String get transportTips => throw _privateConstructorUsedError;
  String get budgetTips => throw _privateConstructorUsedError;

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res, Accommodation>;
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
class _$AccommodationCopyWithImpl<$Res, $Val extends Accommodation>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Accommodation
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
abstract class _$$AccommodationImplCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$$AccommodationImplCopyWith(
          _$AccommodationImpl value, $Res Function(_$AccommodationImpl) then) =
      __$$AccommodationImplCopyWithImpl<$Res>;
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
class __$$AccommodationImplCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res, _$AccommodationImpl>
    implements _$$AccommodationImplCopyWith<$Res> {
  __$$AccommodationImplCopyWithImpl(
      _$AccommodationImpl _value, $Res Function(_$AccommodationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Accommodation
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
    return _then(_$AccommodationImpl(
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

class _$AccommodationImpl implements _Accommodation {
  const _$AccommodationImpl(
      {required this.placeName,
      required this.description,
      required this.localVibe,
      required this.safetyTips,
      required this.transportTips,
      required this.budgetTips});

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
    return 'Accommodation(placeName: $placeName, description: $description, localVibe: $localVibe, safetyTips: $safetyTips, transportTips: $transportTips, budgetTips: $budgetTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, placeName, description,
      localVibe, safetyTips, transportTips, budgetTips);

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationImplCopyWith<_$AccommodationImpl> get copyWith =>
      __$$AccommodationImplCopyWithImpl<_$AccommodationImpl>(this, _$identity);
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {required final String placeName,
      required final String description,
      required final String localVibe,
      required final String safetyTips,
      required final String transportTips,
      required final String budgetTips}) = _$AccommodationImpl;

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

  /// Create a copy of Accommodation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationImplCopyWith<_$AccommodationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
