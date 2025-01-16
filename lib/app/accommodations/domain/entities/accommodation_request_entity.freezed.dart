// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccommodationRequest {
  String get destination => throw _privateConstructorUsedError;
  List<String> get locationPreferences => throw _privateConstructorUsedError;
  String get budgetOption => throw _privateConstructorUsedError;
  String get atmosphereOption => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationRequestCopyWith<AccommodationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationRequestCopyWith<$Res> {
  factory $AccommodationRequestCopyWith(AccommodationRequest value,
          $Res Function(AccommodationRequest) then) =
      _$AccommodationRequestCopyWithImpl<$Res, AccommodationRequest>;
  @useResult
  $Res call(
      {String destination,
      List<String> locationPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes});
}

/// @nodoc
class _$AccommodationRequestCopyWithImpl<$Res,
        $Val extends AccommodationRequest>
    implements $AccommodationRequestCopyWith<$Res> {
  _$AccommodationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? locationPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationRequestImplCopyWith<$Res>
    implements $AccommodationRequestCopyWith<$Res> {
  factory _$$AccommodationRequestImplCopyWith(_$AccommodationRequestImpl value,
          $Res Function(_$AccommodationRequestImpl) then) =
      __$$AccommodationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String destination,
      List<String> locationPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes});
}

/// @nodoc
class __$$AccommodationRequestImplCopyWithImpl<$Res>
    extends _$AccommodationRequestCopyWithImpl<$Res, _$AccommodationRequestImpl>
    implements _$$AccommodationRequestImplCopyWith<$Res> {
  __$$AccommodationRequestImplCopyWithImpl(_$AccommodationRequestImpl _value,
      $Res Function(_$AccommodationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? locationPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
  }) {
    return _then(_$AccommodationRequestImpl(
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
    ));
  }
}

/// @nodoc

class _$AccommodationRequestImpl implements _AccommodationRequest {
  const _$AccommodationRequestImpl(
      {required this.destination,
      required final List<String> locationPreferences,
      required this.budgetOption,
      required this.atmosphereOption,
      required this.additionalNotes})
      : _locationPreferences = locationPreferences;

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
  String toString() {
    return 'AccommodationRequest(destination: $destination, locationPreferences: $locationPreferences, budgetOption: $budgetOption, atmosphereOption: $atmosphereOption, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationRequestImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._locationPreferences, _locationPreferences) &&
            (identical(other.budgetOption, budgetOption) ||
                other.budgetOption == budgetOption) &&
            (identical(other.atmosphereOption, atmosphereOption) ||
                other.atmosphereOption == atmosphereOption) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      destination,
      const DeepCollectionEquality().hash(_locationPreferences),
      budgetOption,
      atmosphereOption,
      additionalNotes);

  /// Create a copy of AccommodationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationRequestImplCopyWith<_$AccommodationRequestImpl>
      get copyWith =>
          __$$AccommodationRequestImplCopyWithImpl<_$AccommodationRequestImpl>(
              this, _$identity);
}

abstract class _AccommodationRequest implements AccommodationRequest {
  const factory _AccommodationRequest(
      {required final String destination,
      required final List<String> locationPreferences,
      required final String budgetOption,
      required final String atmosphereOption,
      required final String additionalNotes}) = _$AccommodationRequestImpl;

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

  /// Create a copy of AccommodationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationRequestImplCopyWith<_$AccommodationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
