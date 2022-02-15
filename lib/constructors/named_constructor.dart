void main(List<String>args){}

class Point{
  int? x;
  int? y;

  Point(this.x, this.y);

  //named constructor
  Point.zero(){
    x = 0;
    y = 0;
  }
  int addTogether(){
    return x! + y!;
  }

}
