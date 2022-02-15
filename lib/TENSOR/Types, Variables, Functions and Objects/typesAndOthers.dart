void main() {
// The 7 main types:
//
// numbers - int, float
//
// String - "Hellow";
//
// bool - true or false;
//
// lists - (aka arrays) List<int>
//
// maps - hashmaps

  int x = 5;
  double y = 9;

  String s = '${x + y}';

  List ls_1 = [1, 2, 3];

  List<String> ls_2 = ['Mery', 'John'];

  Map map_1 = {
    'A': 15,
    'B': 23,
  };

  print(map_1['A']); // prints 15

  Map<double, double> map_2 = {3.15: 3.19, 2.17: 3.19};
}
