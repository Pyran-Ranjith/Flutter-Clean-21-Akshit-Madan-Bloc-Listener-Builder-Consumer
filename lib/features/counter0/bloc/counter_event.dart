/* This is the original source code of the vedeo */

part of 'counter_bloc.dart';

// @immutable
sealed class CounterEvent {}

class CounterIncrementevent extends CounterEvent {}

class CounterShowSnackbarEvent extends CounterEvent {}
