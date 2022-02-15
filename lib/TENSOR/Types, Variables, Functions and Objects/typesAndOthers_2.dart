void main() {
  int add(int a, int b) {
    return a + b;
  }

  Function fun;

  fun = add;


  var result = fun(21, 31);
  print(result);
}
