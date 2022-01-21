import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
}

void main() {
  final cubit = CounterCubit(3);
  print(cubit.state);

  cubit.increment();
  print(cubit.state);

  cubit.close();
}
