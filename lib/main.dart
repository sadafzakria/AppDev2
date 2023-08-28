import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = "Flutter Demo";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MYStatelessWidget(),
    );
  }
}

class MYStatelessWidget extends StatelessWidget {
  const MYStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Pressed bell button')));
              },
              icon: Icon(Icons.add_alert))
        ],
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String_title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: String_title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 1;
    return Scaffold(
        appBar: AppBar(
          title: Text("Revisting Flutter"),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 150,
              width: 105,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: Text(
                'Hello World Hello flutter',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Text('The Sky is Blue',
                style: TextStyle(fontSize: 20, color: Colors.lightBlue)),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Pressed CLICK ME button'),
                      ),
                  );

                },
                child: Text('Click me')),

            ElevatedButton(

                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(

                      content: Text('${counter}') ,

                    ),
                  );
                  counter= counter+1;
                },
                child: Text('ADD')),
            ElevatedButton(

                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(

                      content: Text('${counter}') ,

                    ),
                  );
                  counter= counter-1;
                },
                child: Text('SUBTRACT')),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'Hello World3 Hello flutter3',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1328689113/photo/summer-blue-sky-and-white-cloud-white-background-beautiful-clear-cloudy-in-sunlight-calm.jpg?s=612x612&w=0&k=20&c=37qEuwdxyQSx9kuS-_Gz0WiKFX6jMXZN9aRY47mN2vI="),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'Hello World3 Hello flutter3',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/cloud-sky-twilight-times_74190-4017.jpg?w=1380&t=st=1693255713~exp=1693256313~hmac=51bbaa5b32ff77fd324f3ca2a6e63f9350488bc9d3c808aa861e5236d512396f"),
              ),
            )
          ],
        ));
  }
}
