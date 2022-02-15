void main(List<String> args) {
  var p1 = Point.fact('test');
  p1.x = 10;
  p1.y = 20;
  p1.save();

  var p2 = Point.fact('test2');

  var p3 = Point.fact('test3');

  print(p1.x);

  print(p1.y);

  print(p3.x);




}

class Point {
  final String name;
  int? x;
  int? y;

  //static means it's attached to the class
  static final Map<String, Point> _cache = <String, Point>{};

  //name is optional
  Point(this.x, this.y, {required this.name});

  //named constructor
  //the : name = "zero" means it will be executed before the body of the constructor
  Point.zero() : name = "zero" {
    int x;
    int y;
  }

  //factory constructor must have a different name : Point.fact in this case
  factory Point.fact(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final point = Point(0, 0, name: name);
      _cache[name] = point;
      return point;
    }
  }

  void save() {
    _cache[name] = Point(x, y, name: name);
  }

  int addTogether() {
    return x! + y!;
  }

  //every object inside dart inherits from a superclass called Object
  //an object has by default a toString and a hasCode method attached
  @override
    String toString(){
    return super.toString();
  }

  @override
  int get hasCode => super.hashCode;


}
