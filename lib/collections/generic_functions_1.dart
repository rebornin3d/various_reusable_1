T printFirst<T>(List<T> lst) {
  //List of generic type taken as function argument
  T first = lst[0]; //Generic type as local variable
  print(first);
  return first; //Generic type as return value
}
