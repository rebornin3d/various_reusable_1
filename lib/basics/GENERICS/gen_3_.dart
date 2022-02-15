void main() {
  print(x);
  print(y);
}

double y = getAverage_2(8.5, 9.3);

double getAverage_2<String>(double a, double b) {
  return (a + b) / 2;
}

double x = getAverage(3, 5);

double getAverage<String>(int a, int b) {
  // double result = (a + b) /2;

  //print(result);
  return (a + b) / 2;
}
