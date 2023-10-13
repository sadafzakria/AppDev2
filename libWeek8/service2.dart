import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'model2.dart';

class DataBase{
  Future<Database> initializedDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'employees.db'), //join creates the path of databse location which is planets.db in this case
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute (
          "create table employees (id integer primary key, name text not null, age integer)",
        );
      },
    );
  }



  //insert data
  Future<int> insertEmployees (List<Employees> employees) async{
    int result =0;
    final Database db = await initializedDB(); //this will get an instance of the database
    for (var employee in employees){
      result = await db.insert('employees', employee.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    }
    return result;
  }

  //retrieve data
  Future<List<Employees>> retrieveEmployees() async {
    final Database db = await initializedDB();
    final List<Map<String, Object?>> queryresult = await db.query('employees');
    return queryresult.map((e) => Employees.fromMap(e)).toList();
  }




}
