import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_facade.dart';
import 'package:loc_advisor/app/accommodations/domain/entities/accommodation_recommendations_entity.dart';
import 'package:loc_advisor/app/transformers/throttle_droppable.dart';
import 'package:loc_advisor/enums/state_status.dart';

part 'accommodation_list_bloc.freezed.dart';
part 'accommodation_list_event.dart';
part 'accommodation_list_state.dart';

const _pageSize = 15;

@injectable
class AccommodationListBloc
    extends Bloc<AccommodationListEvent, AccommodationListState> {
  final AccommodationsFacade _accommodationsFacade;

  AccommodationListBloc(this._accommodationsFacade)
      : super(AccommodationListState.initial()) {
    on<_Fetched>(_onFetched);
    on<_DestinationChanged>(_onDestinationChanged);
    on<_NextPageFetched>(
      _onNextPageFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onFetched(
    _Fetched event,
    Emitter<AccommodationListState> emit,
  ) async {
    emit(
      state.copyWith(
        getAccommodationsStatus: StateStatus.loading,
        destination: event.destination,
      ),
    );

    final result = await _accommodationsFacade.fetchAccommodations(
      event.destination,
      pageSize: _pageSize,
    );

    result.fold(
      (_) => emit(
        state.copyWith(getAccommodationsStatus: StateStatus.failure),
      ),
      (result) => emit(
        state.copyWith(
          getAccommodationsStatus: StateStatus.success,
          recommendations: result,
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onDestinationChanged(
    _DestinationChanged event,
    Emitter<AccommodationListState> emit,
  ) async {
    emit(
      state.copyWith(
        getAccommodationsStatus: StateStatus.loading,
        destination: event.destination,
      ),
    );

    final result = await _accommodationsFacade.fetchAccommodations(
      event.destination,
      pageSize: _pageSize,
    );

    result.fold(
      (_) => emit(
        state.copyWith(getAccommodationsStatus: StateStatus.failure),
      ),
      (result) => emit(
        state.copyWith(
          getAccommodationsStatus: StateStatus.success,
          recommendations: result,
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<AccommodationListState> emit,
  ) async {
    if (state.hasReachedMax || state.recommendations.isEmpty) return;

    emit(state.copyWith(nextPageStatus: StateStatus.loading));

    final result = await _accommodationsFacade.fetchAccommodations(
      state.destination,
      pageSize: _pageSize,
      lastRecommendation: state.recommendations.last,
    );

    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: StateStatus.failure)),
      (result) => emit(
        state.copyWith(
          nextPageStatus: StateStatus.success,
          recommendations: [...state.recommendations, ...result],
          hasReachedMax: result.length != _pageSize,
        ),
      ),
    );
  }
}
