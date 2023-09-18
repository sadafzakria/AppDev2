/*
//nullable values
//by using the "?" you allow a value to be null or an actual value
int checkValue(int? value){
  if(value == null){
    return 0;
  }
  return value.abs();
}

void main(){
  print(checkValue(5));
  print(checkValue(null));

}

 */


//assertion operator
//if you use "?" to allow a value to be null
//you should use "!" to assign to another variable
//"!" allows a non-nullable value to be nullable
void main() {
  int? maybeValue = 42;
  int val = maybeValue!;
  print(val);

  //use "??" if you want to say return value if null
  String? input;
  //message is input but if null it is 'Error'
  String message = input ?? 'Error';
  print(message);

  //here you are saying if input is null it is assigned 'Error'
  //this is also saying if input is not null it is input
  //less redundant
  input ??= 'Error';

  //non-nullable list
  List<String> nonNullableList = ["apple", "banana"];
  //you can NOT add null to a non-nullable list

  //nullable list
  //you can add a null value, but it prints nothing
  List<String?> nullableList = ["apple", null,"banana"];
  nullableList.add(null);
  print(nonNullableList);

  //calling a nullable function
  greetNullable(null);
  greetNullable("sadaf");

}

//nullable function
void greetNullable(String? name){
  if(name != null){
    print("hello, $name");
  }
  else {
    print("Hello, anonymous");
  }
}