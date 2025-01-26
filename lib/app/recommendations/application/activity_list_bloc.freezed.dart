// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityListEventCopyWith<$Res> {
  factory $ActivityListEventCopyWith(
          ActivityListEvent value, $Res Function(ActivityListEvent) then) =
      _$ActivityListEventCopyWithImpl<$Res, ActivityListEvent>;
}

/// @nodoc
class _$ActivityListEventCopyWithImpl<$Res, $Val extends ActivityListEvent>
    implements $ActivityListEventCopyWith<$Res> {
  _$ActivityListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destination});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$ActivityListEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
  }) {
    return _then(_$FetchedImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl({this.destination = ''});

  @override
  @JsonKey()
  final String destination;

  @override
  String toString() {
    return 'ActivityListEvent.fetched(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
  }) {
    return fetched(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
  }) {
    return fetched?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ActivityListEvent {
  const factory _Fetched({final String destination}) = _$FetchedImpl;

  String get destination;

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DestinationChangedImplCopyWith<$Res> {
  factory _$$DestinationChangedImplCopyWith(_$DestinationChangedImpl value,
          $Res Function(_$DestinationChangedImpl) then) =
      __$$DestinationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destination});
}

/// @nodoc
class __$$DestinationChangedImplCopyWithImpl<$Res>
    extends _$ActivityListEventCopyWithImpl<$Res, _$DestinationChangedImpl>
    implements _$$DestinationChangedImplCopyWith<$Res> {
  __$$DestinationChangedImplCopyWithImpl(_$DestinationChangedImpl _value,
      $Res Function(_$DestinationChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
  }) {
    return _then(_$DestinationChangedImpl(
      null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DestinationChangedImpl implements _DestinationChanged {
  const _$DestinationChangedImpl(this.destination);

  @override
  final String destination;

  @override
  String toString() {
    return 'ActivityListEvent.destinationChanged(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationChangedImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationChangedImplCopyWith<_$DestinationChangedImpl> get copyWith =>
      __$$DestinationChangedImplCopyWithImpl<_$DestinationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
  }) {
    return destinationChanged(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
  }) {
    return destinationChanged?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (destinationChanged != null) {
      return destinationChanged(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return destinationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return destinationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (destinationChanged != null) {
      return destinationChanged(this);
    }
    return orElse();
  }
}

abstract class _DestinationChanged implements ActivityListEvent {
  const factory _DestinationChanged(final String destination) =
      _$DestinationChangedImpl;

  String get destination;

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationChangedImplCopyWith<_$DestinationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageFetchedImplCopyWith<$Res> {
  factory _$$NextPageFetchedImplCopyWith(_$NextPageFetchedImpl value,
          $Res Function(_$NextPageFetchedImpl) then) =
      __$$NextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageFetchedImplCopyWithImpl<$Res>
    extends _$ActivityListEventCopyWithImpl<$Res, _$NextPageFetchedImpl>
    implements _$$NextPageFetchedImplCopyWith<$Res> {
  __$$NextPageFetchedImplCopyWithImpl(
      _$NextPageFetchedImpl _value, $Res Function(_$NextPageFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextPageFetchedImpl implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString() {
    return 'ActivityListEvent.nextPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageFetched implements ActivityListEvent {
  const factory _NextPageFetched() = _$NextPageFetchedImpl;
}

/// @nodoc
mixin _$ActivityListState {
  StateStatus get getActivitiesStatus => throw _privateConstructorUsedError;
  StateStatus get nextPageStatus => throw _privateConstructorUsedError;
  List<ActivityRecommendations> get activities =>
      throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  /// Create a copy of ActivityListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityListStateCopyWith<ActivityListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityListStateCopyWith<$Res> {
  factory $ActivityListStateCopyWith(
          ActivityListState value, $Res Function(ActivityListState) then) =
      _$ActivityListStateCopyWithImpl<$Res, ActivityListState>;
  @useResult
  $Res call(
      {StateStatus getActivitiesStatus,
      StateStatus nextPageStatus,
      List<ActivityRecommendations> activities,
      bool hasReachedMax,
      String destination});
}

/// @nodoc
class _$ActivityListStateCopyWithImpl<$Res, $Val extends ActivityListState>
    implements $ActivityListStateCopyWith<$Res> {
  _$ActivityListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getActivitiesStatus = null,
    Object? nextPageStatus = null,
    Object? activities = null,
    Object? hasReachedMax = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityRecommendations>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityListStateImplCopyWith<$Res>
    implements $ActivityListStateCopyWith<$Res> {
  factory _$$ActivityListStateImplCopyWith(_$ActivityListStateImpl value,
          $Res Function(_$ActivityListStateImpl) then) =
      __$$ActivityListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus getActivitiesStatus,
      StateStatus nextPageStatus,
      List<ActivityRecommendations> activities,
      bool hasReachedMax,
      String destination});
}

/// @nodoc
class __$$ActivityListStateImplCopyWithImpl<$Res>
    extends _$ActivityListStateCopyWithImpl<$Res, _$ActivityListStateImpl>
    implements _$$ActivityListStateImplCopyWith<$Res> {
  __$$ActivityListStateImplCopyWithImpl(_$ActivityListStateImpl _value,
      $Res Function(_$ActivityListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getActivitiesStatus = null,
    Object? nextPageStatus = null,
    Object? activities = null,
    Object? hasReachedMax = null,
    Object? destination = null,
  }) {
    return _then(_$ActivityListStateImpl(
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityRecommendations>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityListStateImpl implements _ActivityListState {
  const _$ActivityListStateImpl(
      {required this.getActivitiesStatus,
      required this.nextPageStatus,
      required final List<ActivityRecommendations> activities,
      required this.hasReachedMax,
      required this.destination})
      : _activities = activities;

  @override
  final StateStatus getActivitiesStatus;
  @override
  final StateStatus nextPageStatus;
  final List<ActivityRecommendations> _activities;
  @override
  List<ActivityRecommendations> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final bool hasReachedMax;
  @override
  final String destination;

  @override
  String toString() {
    return 'ActivityListState(getActivitiesStatus: $getActivitiesStatus, nextPageStatus: $nextPageStatus, activities: $activities, hasReachedMax: $hasReachedMax, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityListStateImpl &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getActivitiesStatus,
      nextPageStatus,
      const DeepCollectionEquality().hash(_activities),
      hasReachedMax,
      destination);

  /// Create a copy of ActivityListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityListStateImplCopyWith<_$ActivityListStateImpl> get copyWith =>
      __$$ActivityListStateImplCopyWithImpl<_$ActivityListStateImpl>(
          this, _$identity);
}

abstract class _ActivityListState implements ActivityListState {
  const factory _ActivityListState(
      {required final StateStatus getActivitiesStatus,
      required final StateStatus nextPageStatus,
      required final List<ActivityRecommendations> activities,
      required final bool hasReachedMax,
      required final String destination}) = _$ActivityListStateImpl;

  @override
  StateStatus get getActivitiesStatus;
  @override
  StateStatus get nextPageStatus;
  @override
  List<ActivityRecommendations> get activities;
  @override
  bool get hasReachedMax;
  @override
  String get destination;

  /// Create a copy of ActivityListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityListStateImplCopyWith<_$ActivityListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
