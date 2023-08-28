//import 'dart:js_util';
import 'dart:io';

import 'dart:ffi';

void main() {
  var std = new Student();
  std.stdName = "Peter";
  std.stdAge = 24;
  std.stdRoll_nu = 9001;
  Student.stdBranch = "Computer Science";

//show info. (class function)
  std.showStdInfo();

  //var std2 = new Student("Jonas",26);

  Child c = new Child();

  Bike b = new Bike();
  b.display();

  Parrot p = new Parrot();
  p.speak();
  p.fly();

  //implicit superclass constructor
  Subclass s = new Subclass();
  s.display();

  double tempF = 86;
  double result = (tempF - 32) / 1.8;

  print("${tempF.toInt()}F = ${result.toInt()}C");

  var list = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var value in list) {
    sum += value;
  }
  print(sum);

  print('Enter X');
  var x = double.parse(stdin.readLineSync()!);
  print('Enter Y');
  var y = double.parse(stdin.readLineSync()!);

  var sum2 = x+y;
  print('sum ${sum2}');
  var average = sum2/2;
  print('average ${average}');
} //end of main

class Triangle {
  void print(String st) {
    String st = "*";
    for (int i = 0; i < 5; i++) {
      print(st);
      st+="*";

    }
  }
}

class Student {
  static var stdBranch; //static variable belongs to the class not the object
  String _stdName = "null";
  int _stdAge = 0;
  int _stdRoll_nu = 0;

//getters + setters

  //Age
  int get stdAge => _stdAge;

  set stdAge(int value) {
    if (stdAge <= 0) {
      print("Age should be greater than 5");
    } else {
      _stdAge = value;
    }
  }

  //Roll Number
  int get stdRoll_nu => _stdRoll_nu;

  set stdRoll_nu(int value) {
    _stdRoll_nu = value;
  }

  //Name
  String get stdName => _stdName;

  set stdName(String value) {
    _stdName = value;
  }

  showStdInfo() {
    print("Name ${stdName}");
    print("Age ${stdAge}");
    print("Roll Number ${stdRoll_nu}");
    print("Branch ${stdBranch}");
  }
}

class Parent {
  Parent() {
    print("super-class");
  }
}

//inheritance "super" keyword is used with the constructor
class Child extends Parent {
  Child() : super() {
    print("sub-class");
  }
}

class Car {
  var speed = 180;
}

class Bike extends Car {
  var speed = 110;

  void display() {
    print("Speed: ${super.speed}");
  }
}

class Bird {
  void fly() {
    print("Bird can fly");
  }
}

class Parrot extends Bird {
  void speak() {
    print("Parrot can speak");
  }
}

class Superclass {
  Superclass(String msg) {
    print("Superclass Constructor");
    print(msg);
  }
}

class Subclass extends Superclass {
  Subclass() : super("calling superclass constructor explicitly") {
    print("subclass constructor");
  }

  display() {
    print("welcome to dart");
  }
}
