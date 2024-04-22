import 'package:bloc_counter/bloc/counter_event.dart';
import 'package:bloc_counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const InitialState()) {
    on<Increment>((event, emit) {
      emit(CounterState(state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(CounterState(state.counter - 1));
    });
  }
}
