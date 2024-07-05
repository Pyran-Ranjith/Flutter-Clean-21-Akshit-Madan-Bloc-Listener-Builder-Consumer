part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class CounterIncrementevent extends CounterEvent {
  // on<CounterIncrementevent>(counterIncrementevent);
}

// FutureOr<void> 