void main(List<String> args){}


class Point{
  int? x;
  int? y;

  Point(this.x, this.y);

  int addTogether(){
    return x! + y! ;
  }

}