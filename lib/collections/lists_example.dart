void main() {
  var carTypes = ['audi', 'bmw', 'mercedes', 'bmw'];

  carTypes[2] = 'ford';

  for (int i = 0; i < carTypes.length; i++) {
    print(carTypes[i]);
  }

  print('');
//this is the same as the one above but more succint
  for (var carType in carTypes) {
    print(carTypes);
  }

  print(carTypes.length);
  print(carTypes.isEmpty);
  print([].isEmpty);
  print(carTypes.isNotEmpty);
  print(carTypes.first);
  print(carTypes.last);

  //list methods to modify the content of a list

  carTypes.add('ferrari');
  print(carTypes);

  carTypes.insert(0, 'vw');
  print(carTypes);

  carTypes.removeAt(2);

  print(carTypes.contains('jeep'));

  print(carTypes.indexOf('vw'));

  //type annotations with lists

  List<String> animals = ['Cat', 'Dog'];

  print(animals);

  var animals2 = <String>['poney, horse'];
  print(animals2);

  //with the const modifier this would not work
  final animals3 = ['monkey', 'snake'];
  animals3[0] = 'Lion';
  print(animals3);



}
