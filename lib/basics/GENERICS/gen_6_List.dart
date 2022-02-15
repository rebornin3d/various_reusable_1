H met_1<G, H>(List<G> lst) {
  H var_1 = lst[0] as H;
  H var_2 = lst[1] as H;

  print(var_1);
  print(var_2);

  return var_1;
}

void main() {
  List<int> intList = [3, 5, 7];
  List<double> doubleList = [5.2, 7.1];

  met_1(intList);
  met_1(doubleList);
}
