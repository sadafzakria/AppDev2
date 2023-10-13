class Planets{
  late final int id;
  late final String name;
  late final int age;
  late final int distancefromsun;

  Planets({required this.id,
          required this.name,
          required this.age,
          required this.distancefromsun});
  //Sqlite uses aps consisting of key column names and their values
  // to communicate with the database
  //ToMap() and FromMap() methods change these maps into objects to maps

  Planets.fromMap(Map<String, dynamic> result)
  : id = result["id"],
  name = result["name"],
  age = result["age"],
  distancefromsun = result["distancefromsun"];

  Map<String, Object> toMap(){
    return {
      'id' : id,
      'name' : name,
      'age' : age,
      'distancefromsun' : distancefromsun
    };
  }

}