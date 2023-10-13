class Employees{
  late final int id;
  late final String name;
  late final int age;


  Employees({required this.id,
    required this.name,
    required this.age});
  //Sqlite uses aps consisting of key column names and their values
  // to communicate with the database
  //ToMap() and FromMap() methods change these maps into objects to maps

  Employees.fromMap(Map<String, dynamic> result)
      : id = result["id"],
        name = result["name"],
        age = result["age"]
        ;

  Map<String, Object> toMap(){
    return {
      'id' : id,
      'name' : name,
      'age' : age

    };
  }

}