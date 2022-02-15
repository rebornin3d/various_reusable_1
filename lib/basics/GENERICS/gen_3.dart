main(List<String> args) {
  double avgInt = getAverage<int>(5, 6);

  double avgDouble = getAverage<int>(5.9, 16.5);

  double primulNumar = getFirst<double>(5, 7);

  int nr_1 = getNr_1<int>(11, 17);

  print(avgInt);
  print(avgDouble);
  print('getFirst:  $primulNumar');
  print(nr_1);
}

double getAverage<int extends num>(double first, double second) {
  var x = first + second;

  return (first + second) / 2;
}

double getFirst<T extends num>(double first, T second) {
  return (first);
}

int getNr_1<double extends num>(int first, int second) {
  return (first);
}
