import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
}

final cubitA = CounterCubit(0);
final cubitB = CounterCubit(10);

void main() {
  final cubit = CounterCubit(5);

  print(cubit.state);

  cubit.increment();

  print(cubit.state);
  cubit.close();
}
