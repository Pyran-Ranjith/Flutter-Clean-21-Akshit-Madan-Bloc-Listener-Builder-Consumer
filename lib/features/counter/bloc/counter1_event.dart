part of 'counter1_bloc.dart';

@immutable
sealed class Counter1Event {}

class Counter1IncrementEvent extends Counter1Event{}

class Counter1DecrementEvent extends Counter1Event{}
