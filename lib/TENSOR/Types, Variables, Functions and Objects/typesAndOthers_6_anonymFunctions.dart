calc(int b) {
  int c = 1;

  return () => print('The value is ${b + c++}');
}

void main() {
  (a, b) {
    print('Hello from closure ${a + b}');
  }(10, 20);

  var f = calc(2);
  f();
  f();
  f();

  calc(5)();
}
