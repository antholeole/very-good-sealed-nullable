// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';
import 'package:verygood/nullable_counter/cubit/nullable_counter_state.dart';

class NullableCounterCubit extends Cubit<NullableCounterState> {
  NullableCounterCubit() : super(NullableCounterState.withValue(0));

  void setNull() => emit(NullableCounterState.toNull());
  void decrement() => emit(NullableCounterState.withValue(
      state.join((withVal) => withVal.value - 1, (noVal) => 0)));
  void increment() => emit(NullableCounterState.withValue(
      state.join((withVal) => withVal.value + 1, (noVal) => 0)));
}
