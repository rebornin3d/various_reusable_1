Stream<String> litStream(String str) async* {
  for (int i = 0; i <= 3; i++) {
    yield 'i';
  }
}

Future<String>sumFuture(Stream<String> stream_arg)async{
  String strg_1 = 'zero  ';

  await for(String value in stream_arg){
    strg_1 += value;
  }
  return strg_1;
}

void main()async{
  Stream<String> stream_1 = litStream('');

  String sfoara = await sumFuture(stream_1);

  print(sfoara);
}
