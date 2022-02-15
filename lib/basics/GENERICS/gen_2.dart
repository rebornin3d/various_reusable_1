//This generic function prints and returns the item at the first index (0) of a list

 V printFirst<V,G>(List<V> lst) {
  //List of generic type taken as function argument
  V first = lst[0]; //Generic type as local variable
  V second = lst[1];
  print(first);
  print(second);
  return first; //Generic type as return value
}

void main() {
  //Lists of three different data types declared
  List<int> intList = [2, 4, 9, 10];
  List<double> doubleList = [5.2, 9.1, 1.2, 3.5];
  List<String> stringList = ["cat", "giraffe", "panther", "scorpion"];

  //Generic function printFirst called on Lists if different times
  printFirst(intList);
  printFirst(doubleList);
  printFirst(stringList);
}
