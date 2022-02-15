 class Cls_1<T> {
  double first, secund;

  Cls_1(this.first, this.secund);

  String getDescription() {
    return "First property : $first, Second property : $secund";
  }

  double met_2() {
    double x = first;

    return (x);
  }
}

main(List<String> args) {
  var varX = Cls_1("Hello", 2);

  var varY = Cls_1(2.30, 3.44);

  var varZ = Cls_1(true, false);

  var varH = Cls_1(5, 9);

  print("var_X ${varX.getDescription()}");

  print("var_H : ${varH.met_2()}");
}


// Pasi :

// 1) creez o clasa in care declar variabilele de care am nevoie in cod.

// 2) creez constructorul clasei.

// 3) creez methods care folosesc variabilele si returneaza ceva.

// 4) in main() declar variabile si le asignez la parametri din constructor.

// 5) 