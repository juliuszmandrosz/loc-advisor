// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendationsState {
  RecommendationTab get selectedTab => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationsStateCopyWith<RecommendationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsStateCopyWith<$Res> {
  factory $RecommendationsStateCopyWith(RecommendationsState value,
          $Res Function(RecommendationsState) then) =
      _$RecommendationsStateCopyWithImpl<$Res, RecommendationsState>;
  @useResult
  $Res call({RecommendationTab selectedTab, String destination});
}

/// @nodoc
class _$RecommendationsStateCopyWithImpl<$Res,
        $Val extends RecommendationsState>
    implements $RecommendationsStateCopyWith<$Res> {
  _$RecommendationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as RecommendationTab,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationsStateImplCopyWith<$Res>
    implements $RecommendationsStateCopyWith<$Res> {
  factory _$$RecommendationsStateImplCopyWith(_$RecommendationsStateImpl value,
          $Res Function(_$RecommendationsStateImpl) then) =
      __$$RecommendationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecommendationTab selectedTab, String destination});
}

/// @nodoc
class __$$RecommendationsStateImplCopyWithImpl<$Res>
    extends _$RecommendationsStateCopyWithImpl<$Res, _$RecommendationsStateImpl>
    implements _$$RecommendationsStateImplCopyWith<$Res> {
  __$$RecommendationsStateImplCopyWithImpl(_$RecommendationsStateImpl _value,
      $Res Function(_$RecommendationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? destination = null,
  }) {
    return _then(_$RecommendationsStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as RecommendationTab,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecommendationsStateImpl implements _RecommendationsState {
  const _$RecommendationsStateImpl(
      {required this.selectedTab, required this.destination});

  @override
  final RecommendationTab selectedTab;
  @override
  final String destination;

  @override
  String toString() {
    return 'RecommendationsState(selectedTab: $selectedTab, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationsStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab, destination);

  /// Create a copy of RecommendationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationsStateImplCopyWith<_$RecommendationsStateImpl>
      get copyWith =>
          __$$RecommendationsStateImplCopyWithImpl<_$RecommendationsStateImpl>(
              this, _$identity);
}

abstract class _RecommendationsState implements RecommendationsState {
  const factory _RecommendationsState(
      {required final RecommendationTab selectedTab,
      required final String destination}) = _$RecommendationsStateImpl;

  @override
  RecommendationTab get selectedTab;
  @override
  String get destination;

  /// Create a copy of RecommendationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationsStateImplCopyWith<_$RecommendationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
