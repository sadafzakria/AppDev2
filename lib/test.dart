void main() {
  //1
  print("example of adding two numbers using the function");

  int sum(int a, int b) {
    int result;
    result = a + b;
    return result;
  }

  var c = sum(30, 20);
  print("the sum of the two numbers is: ${c}");

  //2
  void number(int n) {
    if (n % 2 == 0) {
      print("even");
    } else {
      print("odd");
    }
  }

  number(20);

  //3
  var list = ['james', 'mathew', 'tom'];
  print("Example of anonymous function");
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  //4
  //anonymous function using function expression
  var multiply = (int a, int b) {
    return a * b;
  };
  //anonymous function using lambda
  var multiplying = (int a, int b) => a * b;
  var result = multiplying(5, 3);
  print(result);

  //5
  //recursion
  var num = 5;
  var fact = factiorial(num);
  print("Factorial = ${fact}");

  //6
  //Class and Object (Student class below)
  var std =  new Student();
  std.stdName = "Peter";
  std.stdAge = 24;
  std.stdRoll_nu = 9001;
  //show info.
  std.showStdInfo();

}
//end of main()

//recursive function to find factorial
int factiorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * factiorial(num - 1);
  }
}

//Student class
class Student{
  var stdName;
  var stdAge;
  var stdRoll_nu;

  showStdInfo(){
    print("Name ${stdName}");
    print("Age ${stdAge}");
    print("Roll Number ${stdRoll_nu}");
  }
}
