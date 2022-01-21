Stream<double> countStream(double max) async* {
  for (double i = 0; i < max; i++) {
    yield i;
  }
}

Future<double> sumFuture(Stream<double> stream_arg) async {
  double sum = 0;

  await for (double value in stream_arg) {
    sum += value;
  }
  return sum;
}

void main() async {
  Stream<double> str_1 = countStream(8);

  double dbl_1 = await sumFuture(str_1);

  print(dbl_1);
}
