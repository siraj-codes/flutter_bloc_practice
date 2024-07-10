import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvents {}

final class CounterIncremented extends CounterEvents {}

final class CounterDecremented extends CounterEvents {}

final class CounterReset extends CounterEvents {}

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      emit(state - 1);
    });

    on<CounterReset>((event, emit) {
      emit(state - state);
    });
  }
}
