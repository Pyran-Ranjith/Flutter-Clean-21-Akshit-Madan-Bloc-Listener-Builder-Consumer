part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  String get val => null;
}

final class CounterInitial extends CounterState {}

class CounterIncrementState extends CounterState {
  final int val;

  CounterIncrementState({
    required this.val
    });
}
