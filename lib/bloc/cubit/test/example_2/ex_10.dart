Stream<int> countStream(int max) async*{
  for(int i = 0; i< max; i++){
    yield i;
  }
}

Future<int> sumFuture(Stream<int>stream_arg)async{
  int sum = 0;

  await for (int value in stream_arg){
    sum += value;
  }
  return sum;
}

void main()async{
  Stream<int>stream_1 = countStream(4);

  int sum = await sumFuture(stream_1);

  print(sum);

}

