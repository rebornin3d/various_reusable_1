import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<double> {
  CounterCubit(double initialState) : super(initialState);

  void increment() => emit(state + 1);
}

void main() {
  final cubit_1 = CounterCubit(5);
  print(cubit_1.state);

  cubit_1.increment();
  print(cubit_1.state);
  cubit_1.close();
}
