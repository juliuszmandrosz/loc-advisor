// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccommodationListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
    required TResult Function(AccommodationRecommendations accommodation)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
    TResult? Function(AccommodationRecommendations accommodation)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    TResult Function(AccommodationRecommendations accommodation)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationListEventCopyWith<$Res> {
  factory $AccommodationListEventCopyWith(AccommodationListEvent value,
          $Res Function(AccommodationListEvent) then) =
      _$AccommodationListEventCopyWithImpl<$Res, AccommodationListEvent>;
}

/// @nodoc
class _$AccommodationListEventCopyWithImpl<$Res,
        $Val extends AccommodationListEvent>
    implements $AccommodationListEventCopyWith<$Res> {
  _$AccommodationListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationListEvent
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
    extends _$AccommodationListEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationListEvent
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
    return 'AccommodationListEvent.fetched(destination: $destination)';
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

  /// Create a copy of AccommodationListEvent
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
    required TResult Function(AccommodationRecommendations accommodation)
        deleted,
  }) {
    return fetched(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
    TResult? Function(AccommodationRecommendations accommodation)? deleted,
  }) {
    return fetched?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    TResult Function(AccommodationRecommendations accommodation)? deleted,
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
    required TResult Function(_Deleted value) deleted,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements AccommodationListEvent {
  const factory _Fetched({final String destination}) = _$FetchedImpl;

  String get destination;

  /// Create a copy of AccommodationListEvent
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
    extends _$AccommodationListEventCopyWithImpl<$Res, _$DestinationChangedImpl>
    implements _$$DestinationChangedImplCopyWith<$Res> {
  __$$DestinationChangedImplCopyWithImpl(_$DestinationChangedImpl _value,
      $Res Function(_$DestinationChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationListEvent
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
    return 'AccommodationListEvent.destinationChanged(destination: $destination)';
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

  /// Create a copy of AccommodationListEvent
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
    required TResult Function(AccommodationRecommendations accommodation)
        deleted,
  }) {
    return destinationChanged(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
    TResult? Function(AccommodationRecommendations accommodation)? deleted,
  }) {
    return destinationChanged?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    TResult Function(AccommodationRecommendations accommodation)? deleted,
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
    required TResult Function(_Deleted value) deleted,
  }) {
    return destinationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return destinationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (destinationChanged != null) {
      return destinationChanged(this);
    }
    return orElse();
  }
}

abstract class _DestinationChanged implements AccommodationListEvent {
  const factory _DestinationChanged(final String destination) =
      _$DestinationChangedImpl;

  String get destination;

  /// Create a copy of AccommodationListEvent
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
    extends _$AccommodationListEventCopyWithImpl<$Res, _$NextPageFetchedImpl>
    implements _$$NextPageFetchedImplCopyWith<$Res> {
  __$$NextPageFetchedImplCopyWithImpl(
      _$NextPageFetchedImpl _value, $Res Function(_$NextPageFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextPageFetchedImpl implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString() {
    return 'AccommodationListEvent.nextPageFetched()';
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
    required TResult Function(AccommodationRecommendations accommodation)
        deleted,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
    TResult? Function(AccommodationRecommendations accommodation)? deleted,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    TResult Function(AccommodationRecommendations accommodation)? deleted,
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
    required TResult Function(_Deleted value) deleted,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageFetched implements AccommodationListEvent {
  const factory _NextPageFetched() = _$NextPageFetchedImpl;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccommodationRecommendations accommodation});

  $AccommodationRecommendationsCopyWith<$Res> get accommodation;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$AccommodationListEventCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accommodation = null,
  }) {
    return _then(_$DeletedImpl(
      null == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as AccommodationRecommendations,
    ));
  }

  /// Create a copy of AccommodationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccommodationRecommendationsCopyWith<$Res> get accommodation {
    return $AccommodationRecommendationsCopyWith<$Res>(_value.accommodation,
        (value) {
      return _then(_value.copyWith(accommodation: value));
    });
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.accommodation);

  @override
  final AccommodationRecommendations accommodation;

  @override
  String toString() {
    return 'AccommodationListEvent.deleted(accommodation: $accommodation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.accommodation, accommodation) ||
                other.accommodation == accommodation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accommodation);

  /// Create a copy of AccommodationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) fetched,
    required TResult Function(String destination) destinationChanged,
    required TResult Function() nextPageFetched,
    required TResult Function(AccommodationRecommendations accommodation)
        deleted,
  }) {
    return deleted(accommodation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? fetched,
    TResult? Function(String destination)? destinationChanged,
    TResult? Function()? nextPageFetched,
    TResult? Function(AccommodationRecommendations accommodation)? deleted,
  }) {
    return deleted?.call(accommodation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? fetched,
    TResult Function(String destination)? destinationChanged,
    TResult Function()? nextPageFetched,
    TResult Function(AccommodationRecommendations accommodation)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(accommodation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_DestinationChanged value) destinationChanged,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_DestinationChanged value)? destinationChanged,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_DestinationChanged value)? destinationChanged,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AccommodationListEvent {
  const factory _Deleted(final AccommodationRecommendations accommodation) =
      _$DeletedImpl;

  AccommodationRecommendations get accommodation;

  /// Create a copy of AccommodationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccommodationListState {
  StateStatus get getAccommodationsStatus => throw _privateConstructorUsedError;
  StateStatus get nextPageStatus => throw _privateConstructorUsedError;
  List<AccommodationRecommendations> get recommendations =>
      throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  StateStatus get deleteStatus => throw _privateConstructorUsedError;

  /// Create a copy of AccommodationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccommodationListStateCopyWith<AccommodationListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationListStateCopyWith<$Res> {
  factory $AccommodationListStateCopyWith(AccommodationListState value,
          $Res Function(AccommodationListState) then) =
      _$AccommodationListStateCopyWithImpl<$Res, AccommodationListState>;
  @useResult
  $Res call(
      {StateStatus getAccommodationsStatus,
      StateStatus nextPageStatus,
      List<AccommodationRecommendations> recommendations,
      bool hasReachedMax,
      String destination,
      StateStatus deleteStatus});
}

/// @nodoc
class _$AccommodationListStateCopyWithImpl<$Res,
        $Val extends AccommodationListState>
    implements $AccommodationListStateCopyWith<$Res> {
  _$AccommodationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccommodationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccommodationsStatus = null,
    Object? nextPageStatus = null,
    Object? recommendations = null,
    Object? hasReachedMax = null,
    Object? destination = null,
    Object? deleteStatus = null,
  }) {
    return _then(_value.copyWith(
      getAccommodationsStatus: null == getAccommodationsStatus
          ? _value.getAccommodationsStatus
          : getAccommodationsStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AccommodationRecommendations>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccommodationListStateImplCopyWith<$Res>
    implements $AccommodationListStateCopyWith<$Res> {
  factory _$$AccommodationListStateImplCopyWith(
          _$AccommodationListStateImpl value,
          $Res Function(_$AccommodationListStateImpl) then) =
      __$$AccommodationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus getAccommodationsStatus,
      StateStatus nextPageStatus,
      List<AccommodationRecommendations> recommendations,
      bool hasReachedMax,
      String destination,
      StateStatus deleteStatus});
}

/// @nodoc
class __$$AccommodationListStateImplCopyWithImpl<$Res>
    extends _$AccommodationListStateCopyWithImpl<$Res,
        _$AccommodationListStateImpl>
    implements _$$AccommodationListStateImplCopyWith<$Res> {
  __$$AccommodationListStateImplCopyWithImpl(
      _$AccommodationListStateImpl _value,
      $Res Function(_$AccommodationListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccommodationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccommodationsStatus = null,
    Object? nextPageStatus = null,
    Object? recommendations = null,
    Object? hasReachedMax = null,
    Object? destination = null,
    Object? deleteStatus = null,
  }) {
    return _then(_$AccommodationListStateImpl(
      getAccommodationsStatus: null == getAccommodationsStatus
          ? _value.getAccommodationsStatus
          : getAccommodationsStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AccommodationRecommendations>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$AccommodationListStateImpl implements _AccommodationListState {
  const _$AccommodationListStateImpl(
      {required this.getAccommodationsStatus,
      required this.nextPageStatus,
      required final List<AccommodationRecommendations> recommendations,
      required this.hasReachedMax,
      required this.destination,
      required this.deleteStatus})
      : _recommendations = recommendations;

  @override
  final StateStatus getAccommodationsStatus;
  @override
  final StateStatus nextPageStatus;
  final List<AccommodationRecommendations> _recommendations;
  @override
  List<AccommodationRecommendations> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  final bool hasReachedMax;
  @override
  final String destination;
  @override
  final StateStatus deleteStatus;

  @override
  String toString() {
    return 'AccommodationListState(getAccommodationsStatus: $getAccommodationsStatus, nextPageStatus: $nextPageStatus, recommendations: $recommendations, hasReachedMax: $hasReachedMax, destination: $destination, deleteStatus: $deleteStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccommodationListStateImpl &&
            (identical(
                    other.getAccommodationsStatus, getAccommodationsStatus) ||
                other.getAccommodationsStatus == getAccommodationsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.deleteStatus, deleteStatus) ||
                other.deleteStatus == deleteStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getAccommodationsStatus,
      nextPageStatus,
      const DeepCollectionEquality().hash(_recommendations),
      hasReachedMax,
      destination,
      deleteStatus);

  /// Create a copy of AccommodationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccommodationListStateImplCopyWith<_$AccommodationListStateImpl>
      get copyWith => __$$AccommodationListStateImplCopyWithImpl<
          _$AccommodationListStateImpl>(this, _$identity);
}

abstract class _AccommodationListState implements AccommodationListState {
  const factory _AccommodationListState(
      {required final StateStatus getAccommodationsStatus,
      required final StateStatus nextPageStatus,
      required final List<AccommodationRecommendations> recommendations,
      required final bool hasReachedMax,
      required final String destination,
      required final StateStatus deleteStatus}) = _$AccommodationListStateImpl;

  @override
  StateStatus get getAccommodationsStatus;
  @override
  StateStatus get nextPageStatus;
  @override
  List<AccommodationRecommendations> get recommendations;
  @override
  bool get hasReachedMax;
  @override
  String get destination;
  @override
  StateStatus get deleteStatus;

  /// Create a copy of AccommodationListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccommodationListStateImplCopyWith<_$AccommodationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
