void main() {
  double getSum<int>(double a, double b) {
    return a + b;
  }

  double x = getSum<String>(5.3, 7.1);

  print(x);
}
