class Cls_1<String> {
  double x, y;

  Cls_1(this.x, this.y);

  double met_1() {
    x += 1;
    y += 3;

    return x + y;
  }
}

void main() {
  var a = Cls_1(3, 3);
  var b = a.met_1();
  print('b is $b');
}
