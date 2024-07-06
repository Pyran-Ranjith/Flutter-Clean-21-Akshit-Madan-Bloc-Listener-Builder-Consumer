import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter1_event.dart';
part 'counter1_state.dart';

class Counter1Bloc extends Bloc<Counter1Event, Counter1State> {
  Counter1Bloc() : super(Counter1Initial()) {
    on<Counter1IncrementEvent>(counter1IncrementEvent);
  }

  int value = 0;
  FutureOr<void> counter1IncrementEvent(
      Counter1IncrementEvent event, Emitter<Counter1State> emit) {
    value++;
    emit(Counter1IncrementState(val: value));
  }
}
