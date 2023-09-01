import 'package:flutter/material.dart';

//starting point calling the method runApp
void main() {
  runApp(MyApp());
}

//runApp is calling class MyApp
//myApp is building the materialApp which is the root of all flutter widget
//MyApp instantiates another class MyStatelessWidget which creates the Scaffold
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

/*
//MyStatelessWidget designs the widget Scaffold, that user designs
//in the main screen(body) of the device
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Revisting Flutter"),),
      body: Center(
        child: Text(
          'Welcome Back',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
 */
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Revisting Flutter"),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 150,
              width: 200,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('Hey Container'),
            ),
          ],
        )));
  }
}