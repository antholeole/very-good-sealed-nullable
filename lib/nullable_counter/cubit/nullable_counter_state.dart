import 'package:flutter/material.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class NullableCounterState
    extends Union2Impl<CounterStateWithValue, CounterStateNull> {
  NullableCounterState._(Union2<CounterStateWithValue, CounterStateNull> union)
      : super(union);

  factory NullableCounterState.withValue(int value) =>
      NullableCounterState._(unions.first(CounterStateWithValue(value)));

  factory NullableCounterState.toNull() =>
      NullableCounterState._(unions.second(const CounterStateNull()));

  static const unions = Doublet<CounterStateWithValue, CounterStateNull>();
}

@immutable
class CounterStateWithValue {
  const CounterStateWithValue(this.value);

  final int value;
}

@immutable
class CounterStateNull {
  const CounterStateNull();
}
