void  main(List<String> args){
  var p = Point()
  ..x = 10
  ..y = 20;

  p.x = 20;
  p.y = 30;
  print(p.addTogether());
}


class Point{
  int x = 0;
  int y = 0;

  int addTogether(){

    return x + y;
  }

}