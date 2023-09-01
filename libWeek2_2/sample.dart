import 'dart.dart';

void main(){

  //var add = (int x, int y) => x+y;
  //print(add(10,20));

  //access modifiers
  Employee emp = new Employee();
  emp.empName = "sakku";
  emp.empAge = 25;
  emp.empSalary = 2000;

  print("name: ${emp.empName}");
  print("age: ${emp.empAge}");
  print("salary: ${emp.empSalary}");

//function as a parameter
  int inc(int x) => ++x;
  int dec(int x) => --x;

  int apply(int x, Function f){
    return f(x);
  }

  int r1 = apply(3, inc);
  int r2 = apply(2, dec);
  print(r1);
  print(r2);

  //nested function
  String buildMessage(String name, String occupation){
    return "$name is a $occupation";
  }

  var name = "John Doe";
  var occupation = "gardener";

  var msg = buildMessage(name, occupation);
  print(msg);

  //named constructor
  Student emp1 = new Student();
  Student emp2 = new Student.namedConst("ST001");


  final rectangle = Rectangle(4.0, 6.0);
  final square = Rectangle.square(5.0);
  final rectangle2 = Rectangle.widthDimension(3.0, 9.6);

  print('rectangle 1 area: ${rectangle.calArea()}');
  print('square area: ${square.calArea()}');
  print('rectangle 2 area: ${rectangle2.calArea()}');


  //Inheritance of constructor with named parameter
  var macbook = MacBook(name: "MacBook Pro", color: "Silver");


}