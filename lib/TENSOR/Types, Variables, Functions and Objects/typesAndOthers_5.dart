int add(int x, int y) => x + y;

int sub(int x, int y) => x - y;

List operators = [add, sub];

void main() {
  var result = operators[0](10, 20);
  var result_2 = operators[1](23, 33);
  print(result);
  print(result_2);



}
