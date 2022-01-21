class Human{
  double? height;
  int? age;

  Human({double? startingHeight}){
    height = startingHeight;
  }

    talk(String whatToSay){
    print(whatToSay);
  }

}


class Dog{
  double? height;
  int? age;

  Dog(double startingHeight){
    height = startingHeight;
  }
}





void main(){
  Human jenny = Human(startingHeight: 15);
  print(jenny.height);
  print(jenny.talk('SuperHappy'));




//when I use curly braces in an constructor I force to specify the parameter
  Human james = Human(startingHeight: 20);
  print(james.height);
  print(james.talk('Yuhuu'));


  //when I don't use curly braces in an constructor I force to specify the parameter
  Dog bobby = Dog(5);
  Dog chichi = Dog(3);




}