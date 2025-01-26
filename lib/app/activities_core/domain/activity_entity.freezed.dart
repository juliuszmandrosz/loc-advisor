// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Activity {
  String get placeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bestTimeToVisit => throw _privateConstructorUsedError;
  String get safetyTips => throw _privateConstructorUsedError;
  String get budgetTips => throw _privateConstructorUsedError;
  String get combinationTips => throw _privateConstructorUsedError;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {String placeName,
      String description,
      String bestTimeToVisit,
      String safetyTips,
      String budgetTips,
      String combinationTips});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
    Object? description = null,
    Object? bestTimeToVisit = null,
    Object? safetyTips = null,
    Object? budgetTips = null,
    Object? combinationTips = null,
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
      bestTimeToVisit: null == bestTimeToVisit
          ? _value.bestTimeToVisit
          : bestTimeToVisit // ignore: cast_nullable_to_non_nullable
              as String,
      safetyTips: null == safetyTips
          ? _value.safetyTips
          : safetyTips // ignore: cast_nullable_to_non_nullable
              as String,
      budgetTips: null == budgetTips
          ? _value.budgetTips
          : budgetTips // ignore: cast_nullable_to_non_nullable
              as String,
      combinationTips: null == combinationTips
          ? _value.combinationTips
          : combinationTips // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeName,
      String description,
      String bestTimeToVisit,
      String safetyTips,
      String budgetTips,
      String combinationTips});
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
    Object? description = null,
    Object? bestTimeToVisit = null,
    Object? safetyTips = null,
    Object? budgetTips = null,
    Object? combinationTips = null,
  }) {
    return _then(_$ActivityImpl(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bestTimeToVisit: null == bestTimeToVisit
          ? _value.bestTimeToVisit
          : bestTimeToVisit // ignore: cast_nullable_to_non_nullable
              as String,
      safetyTips: null == safetyTips
          ? _value.safetyTips
          : safetyTips // ignore: cast_nullable_to_non_nullable
              as String,
      budgetTips: null == budgetTips
          ? _value.budgetTips
          : budgetTips // ignore: cast_nullable_to_non_nullable
              as String,
      combinationTips: null == combinationTips
          ? _value.combinationTips
          : combinationTips // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {required this.placeName,
      required this.description,
      required this.bestTimeToVisit,
      required this.safetyTips,
      required this.budgetTips,
      required this.combinationTips});

  @override
  final String placeName;
  @override
  final String description;
  @override
  final String bestTimeToVisit;
  @override
  final String safetyTips;
  @override
  final String budgetTips;
  @override
  final String combinationTips;

  @override
  String toString() {
    return 'Activity(placeName: $placeName, description: $description, bestTimeToVisit: $bestTimeToVisit, safetyTips: $safetyTips, budgetTips: $budgetTips, combinationTips: $combinationTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bestTimeToVisit, bestTimeToVisit) ||
                other.bestTimeToVisit == bestTimeToVisit) &&
            (identical(other.safetyTips, safetyTips) ||
                other.safetyTips == safetyTips) &&
            (identical(other.budgetTips, budgetTips) ||
                other.budgetTips == budgetTips) &&
            (identical(other.combinationTips, combinationTips) ||
                other.combinationTips == combinationTips));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeName, description,
      bestTimeToVisit, safetyTips, budgetTips, combinationTips);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {required final String placeName,
      required final String description,
      required final String bestTimeToVisit,
      required final String safetyTips,
      required final String budgetTips,
      required final String combinationTips}) = _$ActivityImpl;

  @override
  String get placeName;
  @override
  String get description;
  @override
  String get bestTimeToVisit;
  @override
  String get safetyTips;
  @override
  String get budgetTips;
  @override
  String get combinationTips;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
