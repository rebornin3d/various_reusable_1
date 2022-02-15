class Employee {
  late String empName;
  late int empAge;
  late int empSalary;




  set emp_name(String name) {
    empName = name;
  }

  String get emp_name {
    return empName;
  }






  set emp_age(int age) {
    if (age <= 18) {
      print("Employee Age should be greater than 18 Years.");
    } else {
      empAge = age;
    }
  }

  int get emp_age {
    return empAge;
  }





  set emp_salary(int salary) {

    if (salary <= 22000) {

        print("Salary should be greater than 0");

    } else {
      empSalary = salary;
    }
  }

  int get emp_salary {
    return empSalary;
  }
}




void main() {
  Employee emp = Employee();
  emp.emp_name = 'John';
  emp.emp_age = 25;
  emp.emp_salary = 25000;
  print("W3Adda - Dart Getters and Setters Example.");
  print("Employee's Name Is : ${emp.emp_name}");
  print("Employee's Age Is : ${emp.emp_age}");
  print("Employee's Salary Is : ${emp.emp_salary}");
}
