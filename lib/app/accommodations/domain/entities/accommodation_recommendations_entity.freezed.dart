// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_recommendations_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccommodationRecommendations {
  String get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<Accommodation> get locations => throw _privateConstructorUsedError;
  String get additionalNotes => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationRecommendationsCopyWith<AccommodationRecommendations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationRecommendationsCopyWith<$Res> {
  factory $AccommodationRecommendationsCopyWith(
          AccommodationRecommendations value,
          $Res Function(AccommodationRecommendations) then) =
      _$AccommodationRecommendationsCopyWithImpl<$Res,
          AccommodationRecommendations>;
  @useResult
  $Res call(
      {String id,
      String destination,
      List<Accommodation> locations,
      String additionalNotes});
}

/// @nodoc
class _$AccommodationRecommendationsCopyWithImpl<$Res,
        $Val extends AccommodationRecommendations>
    implements $AccommodationRecommendationsCopyWith<$Res> {
  _$AccommodationRecommendationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? locations = null,
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
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Accommodation>,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationRecommendationsImplCopyWith<$Res>
    implements $AccommodationRecommendationsCopyWith<$Res> {
  factory _$$AccommodationRecommendationsImplCopyWith(
          _$AccommodationRecommendationsImpl value,
          $Res Function(_$AccommodationRecommendationsImpl) then) =
      __$$AccommodationRecommendationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String destination,
      List<Accommodation> locations,
      String additionalNotes});
}

/// @nodoc
class __$$AccommodationRecommendationsImplCopyWithImpl<$Res>
    extends _$AccommodationRecommendationsCopyWithImpl<$Res,
        _$AccommodationRecommendationsImpl>
    implements _$$AccommodationRecommendationsImplCopyWith<$Res> {
  __$$AccommodationRecommendationsImplCopyWithImpl(
      _$AccommodationRecommendationsImpl _value,
      $Res Function(_$AccommodationRecommendationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destination = null,
    Object? locations = null,
    Object? additionalNotes = null,
  }) {
    return _then(_$AccommodationRecommendationsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Accommodation>,
      additionalNotes: null == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccommodationRecommendationsImpl
    implements _AccommodationRecommendations {
  const _$AccommodationRecommendationsImpl(
      {required this.id,
      required this.destination,
      required final List<Accommodation> locations,
      required this.additionalNotes})
      : _locations = locations;

  @override
  final String id;
  @override
  final String destination;
  final List<Accommodation> _locations;
  @override
  List<Accommodation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final String additionalNotes;

  @override
  String toString() {
    return 'AccommodationRecommendations(id: $id, destination: $destination, locations: $locations, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationRecommendationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, destination,
      const DeepCollectionEquality().hash(_locations), additionalNotes);

  /// Create a copy of AccommodationRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationRecommendationsImplCopyWith<
          _$AccommodationRecommendationsImpl>
      get copyWith => __$$AccommodationRecommendationsImplCopyWithImpl<
          _$AccommodationRecommendationsImpl>(this, _$identity);
}

abstract class _AccommodationRecommendations
    implements AccommodationRecommendations {
  const factory _AccommodationRecommendations(
          {required final String id,
          required final String destination,
          required final List<Accommodation> locations,
          required final String additionalNotes}) =
      _$AccommodationRecommendationsImpl;

  @override
  String get id;
  @override
  String get destination;
  @override
  List<Accommodation> get locations;
  @override
  String get additionalNotes;

  /// Create a copy of AccommodationRecommendations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationRecommendationsImplCopyWith<
          _$AccommodationRecommendationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
