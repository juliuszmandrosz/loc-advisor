// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_recommendations_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityRecommendations {
  String get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;

  /// Create a copy of ActivityRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityRecommendationsCopyWith<ActivityRecommendations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityRecommendationsCopyWith<$Res> {
  factory $ActivityRecommendationsCopyWith(ActivityRecommendations value,
          $Res Function(ActivityRecommendations) then) =
      _$ActivityRecommendationsCopyWithImpl<$Res, ActivityRecommendations>;
  @useResult
  $Res call(
      {String id,
      String destination,
      List<Activity> activities,
      String additionalNotes});
}

/// @nodoc
class _$ActivityRecommendationsCopyWithImpl<$Res,
        $Val extends ActivityRecommendations>
    implements $ActivityRecommendationsCopyWith<$Res> {
  _$ActivityRecommendationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? activities = null,
    Object? additionalNotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityRecommendationsImplCopyWith<$Res>
    implements $ActivityRecommendationsCopyWith<$Res> {
  factory _$$ActivityRecommendationsImplCopyWith(
          _$ActivityRecommendationsImpl value,
          $Res Function(_$ActivityRecommendationsImpl) then) =
      __$$ActivityRecommendationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String destination,
      List<Activity> activities,
      String additionalNotes});
}

/// @nodoc
class __$$ActivityRecommendationsImplCopyWithImpl<$Res>
    extends _$ActivityRecommendationsCopyWithImpl<$Res,
        _$ActivityRecommendationsImpl>
    implements _$$ActivityRecommendationsImplCopyWith<$Res> {
  __$$ActivityRecommendationsImplCopyWithImpl(
      _$ActivityRecommendationsImpl _value,
      $Res Function(_$ActivityRecommendationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? activities = null,
    Object? additionalNotes = null,
  }) {
    return _then(_$ActivityRecommendationsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityRecommendationsImpl implements _ActivityRecommendations {
  const _$ActivityRecommendationsImpl(
      {required this.id,
      required this.destination,
      required final List<Activity> activities,
      required this.additionalNotes})
      : _activities = activities;

  @override
  final String id;
  @override
  final String destination;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final String additionalNotes;

  @override
  String toString() {
    return 'ActivityRecommendations(id: $id, destination: $destination, activities: $activities, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityRecommendationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, destination,
      const DeepCollectionEquality().hash(_activities), additionalNotes);

  /// Create a copy of ActivityRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityRecommendationsImplCopyWith<_$ActivityRecommendationsImpl>
      get copyWith => __$$ActivityRecommendationsImplCopyWithImpl<
          _$ActivityRecommendationsImpl>(this, _$identity);
}

abstract class _ActivityRecommendations implements ActivityRecommendations {
  const factory _ActivityRecommendations(
      {required final String id,
      required final String destination,
      required final List<Activity> activities,
      required final String additionalNotes}) = _$ActivityRecommendationsImpl;

  @override
  String get id;
  @override
  String get destination;
  @override
  List<Activity> get activities;
  @override
  String get additionalNotes;

  /// Create a copy of ActivityRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityRecommendationsImplCopyWith<_$ActivityRecommendationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
