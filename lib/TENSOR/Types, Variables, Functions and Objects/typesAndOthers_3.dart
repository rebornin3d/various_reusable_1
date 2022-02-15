
  int add(int a, int b) {
    return a + b;
  }

 exec (Function op, x, y){
  return op(x, y);
 }

 exec_2(Function nl,x ,z  ){
  return nl(x , z);
 }


void main(){

  int a = add (3 , 5);

  var result = exec(add , 3 ,8);

  var result_2 = exec_2(add , 5 ,7);

  print(result);

}
