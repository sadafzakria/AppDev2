import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String_title = 'Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: String_title,
      home: CounterDemo(),
    );
  }
}

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _count = 0;
//setState is a method that will react after an event happened
  void add() {
    setState(() {
      _count++;
    });
  }

  void subtract() {
    setState(() {
      if(_count>0){
      _count--;
      }
      else{
        _count = _count;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter Application"),
        ),
        body: Container(
            child: Center(
                child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: add,
              child: Icon(
                Icons.add,
                color: Colors.green,
              ),
              backgroundColor: Colors.white,
            ),
            Text(
              '$_count',
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton(
              onPressed: subtract,
              child: Icon(
                Icons.remove,
                color: Colors.amberAccent,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ))));
  }
}
*/
class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}