import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
}

Future<void> main() async {
  final cubit = CounterCubit(3);
 // print(cubit.state);

  final subscription = cubit.listen(print);
  cubit.increment();

  await Future.delayed(Duration.zero);
  await subscription.cancel();
  await cubit.close();
}
