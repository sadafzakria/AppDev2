

class A{
  var first;
  var _second;


  get second => _second;

  set second(value) {
    _second = value;
  }
}
class Employee{
  var _empName = "mukul";
  var _empAge = 24;
  var _empSalary = 500;

  //getter+setter
  get empAge => _empAge;

  set empAge(value) {
    _empAge = value;
  }

  get empSalary => _empSalary;

  set empSalary(value) {
    _empSalary = value;
  }

  get empName => _empName;

  set empName(value) {
    _empName = value;
  }

}
class Student{
  Student(){
    print("Student Constructor");
  }

  Student.namedConst(String stCode){
    print(stCode);
  }
}
class Rectangle{
  //late keyword forces the compliler to wait for
  //the variable to be assigned later
  late double width;
  late double height;

  Rectangle(this.width, this.height);

  Rectangle.square(double sideLength){
    width = sideLength;
    height = sideLength;
  }
  Rectangle.widthDimension(this.width, this.height);
  double calArea(){
    return width*height;
  }

}
class Laptop{
  Laptop({var name, var color}){
    print("Laptop Constructor");
    print("name: $name");
    print("color: $color");


  }
}
class MacBook extends Laptop{
  MacBook({var name, var color}) : super(name: name, color: color){
    print("MacBook Constructor");

  }
}