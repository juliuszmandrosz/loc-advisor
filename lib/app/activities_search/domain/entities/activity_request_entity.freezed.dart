// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityRequest {
  String get destination => throw _privateConstructorUsedError;
  String get dateOption => throw _privateConstructorUsedError;
  List<String> get activityPreferences => throw _privateConstructorUsedError;
  String get budgetOption => throw _privateConstructorUsedError;
  String get atmosphereOption => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;

  /// Create a copy of ActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityRequestCopyWith<ActivityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityRequestCopyWith<$Res> {
  factory $ActivityRequestCopyWith(
          ActivityRequest value, $Res Function(ActivityRequest) then) =
      _$ActivityRequestCopyWithImpl<$Res, ActivityRequest>;
  @useResult
  $Res call(
      {String destination,
      String dateOption,
      List<String> activityPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes});
}

/// @nodoc
class _$ActivityRequestCopyWithImpl<$Res, $Val extends ActivityRequest>
    implements $ActivityRequestCopyWith<$Res> {
  _$ActivityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? dateOption = null,
    Object? activityPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      dateOption: null == dateOption
          ? _value.dateOption
          : dateOption // ignore: cast_nullable_to_non_nullable
              as String,
      activityPreferences: null == activityPreferences
          ? _value.activityPreferences
          : activityPreferences // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ActivityRequestImplCopyWith<$Res>
    implements $ActivityRequestCopyWith<$Res> {
  factory _$$ActivityRequestImplCopyWith(_$ActivityRequestImpl value,
          $Res Function(_$ActivityRequestImpl) then) =
      __$$ActivityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String destination,
      String dateOption,
      List<String> activityPreferences,
      String budgetOption,
      String atmosphereOption,
      String additionalNotes});
}

/// @nodoc
class __$$ActivityRequestImplCopyWithImpl<$Res>
    extends _$ActivityRequestCopyWithImpl<$Res, _$ActivityRequestImpl>
    implements _$$ActivityRequestImplCopyWith<$Res> {
  __$$ActivityRequestImplCopyWithImpl(
      _$ActivityRequestImpl _value, $Res Function(_$ActivityRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? dateOption = null,
    Object? activityPreferences = null,
    Object? budgetOption = null,
    Object? atmosphereOption = null,
    Object? additionalNotes = null,
  }) {
    return _then(_$ActivityRequestImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      dateOption: null == dateOption
          ? _value.dateOption
          : dateOption // ignore: cast_nullable_to_non_nullable
              as String,
      activityPreferences: null == activityPreferences
          ? _value._activityPreferences
          : activityPreferences // ignore: cast_nullable_to_non_nullable
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

class _$ActivityRequestImpl implements _ActivityRequest {
  const _$ActivityRequestImpl(
      {required this.destination,
      required this.dateOption,
      required final List<String> activityPreferences,
      required this.budgetOption,
      required this.atmosphereOption,
      required this.additionalNotes})
      : _activityPreferences = activityPreferences;

  @override
  final String destination;
  @override
  final String dateOption;
  final List<String> _activityPreferences;
  @override
  List<String> get activityPreferences {
    if (_activityPreferences is EqualUnmodifiableListView)
      return _activityPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityPreferences);
  }

  @override
  final String budgetOption;
  @override
  final String atmosphereOption;
  @override
  final String additionalNotes;

  @override
  String toString() {
    return 'ActivityRequest(destination: $destination, dateOption: $dateOption, activityPreferences: $activityPreferences, budgetOption: $budgetOption, atmosphereOption: $atmosphereOption, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityRequestImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.dateOption, dateOption) ||
                other.dateOption == dateOption) &&
            const DeepCollectionEquality()
                .equals(other._activityPreferences, _activityPreferences) &&
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
      dateOption,
      const DeepCollectionEquality().hash(_activityPreferences),
      budgetOption,
      atmosphereOption,
      additionalNotes);

  /// Create a copy of ActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityRequestImplCopyWith<_$ActivityRequestImpl> get copyWith =>
      __$$ActivityRequestImplCopyWithImpl<_$ActivityRequestImpl>(
          this, _$identity);
}

abstract class _ActivityRequest implements ActivityRequest {
  const factory _ActivityRequest(
      {required final String destination,
      required final String dateOption,
      required final List<String> activityPreferences,
      required final String budgetOption,
      required final String atmosphereOption,
      required final String additionalNotes}) = _$ActivityRequestImpl;

  @override
  String get destination;
  @override
  String get dateOption;
  @override
  List<String> get activityPreferences;
  @override
  String get budgetOption;
  @override
  String get atmosphereOption;
  @override
  String get additionalNotes;

  /// Create a copy of ActivityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityRequestImplCopyWith<_$ActivityRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
