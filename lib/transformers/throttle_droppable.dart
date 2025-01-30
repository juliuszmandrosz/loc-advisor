import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<E> throttleDroppable<E>({
  Duration? duration = const Duration(milliseconds: 100),
}) {
  return (events, mapper) {
    return droppable<E>().call(events.debounceTime(duration!), mapper);
  };
}