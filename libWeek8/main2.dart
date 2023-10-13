import 'package:flutter/material.dart';
import 'model2.dart';
import 'service2.dart';

void main() {
  //this will initialize communication between dart layer and
  //flutter database engine
  WidgetsFlutterBinding.ensureInitialized();


  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DataBase handler;

  Future<int> addEmployees() async{
    Employees firstEmployee = Employees(id: 1, name: "John Doe", age: 24);
    Employees secondEmployee = Employees(id: 2, name: "Jane Doe", age: 44);
    Employees thirdEmployee = Employees(id: 3, name: "Sadaf Zakria", age: 20);
    Employees fourthEmployee = Employees(id: 4, name: "Bob Ross", age: 36);
    Employees fifthEmployee = Employees(id: 5, name: "Janice Baker", age: 31);

    List<Employees> employees = [firstEmployee, secondEmployee, thirdEmployee, fourthEmployee, fifthEmployee];
    return await handler.insertEmployees(employees);


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handler = DataBase();
    handler.initializedDB().whenComplete(() async {
      await addEmployees();
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            body: FutureBuilder(
              future: handler.retrieveEmployees(),
              builder: (BuildContext context , AsyncSnapshot<List<Employees>> snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, int index){
                        return Card(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8.0),
                            title: Text(snapshot.data![index].name),
                            subtitle: Text(snapshot.data![index].id.toString()),
                          ),
                        );
                      });

                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }

              },
            )
        )
    );
  }
}

