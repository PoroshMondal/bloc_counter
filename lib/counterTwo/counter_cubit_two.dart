import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubitTwo extends Cubit<CounterState>{
  CounterCubitTwo() : super(CounterState(counterValue: 0, wasIncremented: false));

  void increment() => emit(CounterState(counterValue: state.counterValue + 1, wasIncremented: true));
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1, wasIncremented: false));

}

