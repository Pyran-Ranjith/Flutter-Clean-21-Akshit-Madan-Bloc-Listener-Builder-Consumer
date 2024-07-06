part of 'counter1_bloc.dart';

@immutable
sealed class Counter1State {}

final class Counter1Initial extends Counter1State {}

class Counter1IncrementState extends Counter1State {
  final int val;

  Counter1IncrementState({
    required this.val,
  });
}
