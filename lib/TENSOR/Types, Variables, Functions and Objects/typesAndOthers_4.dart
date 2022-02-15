int add(int x, int y) => x + y;

int sub(int x, int y) => x - y;

choose(bool op) {
  if (op == true) {
    return add;
  } else {
    return sub;
  }
}

void main() {
  var result = choose(true);
  var result_2 = choose(false)(23, 33);


  print(result(31, 51));
  print(result_2);
}
