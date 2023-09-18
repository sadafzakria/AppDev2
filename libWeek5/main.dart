import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Table Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Icon(Icons.account_box, size: 40),
                        Text('My Account')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.settings, size: 40),
                        Text('My Settings')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.lightbulb_circle_rounded, size: 40),
                        Text('My Idea')
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Icon(Icons.account_box, size: 40),
                        Text('My Account')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.settings, size: 40),
                        Text('My Settings')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.lightbulb_circle_rounded, size: 40),
                        Text('My Idea')
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        //Icon(Icons.account_box, size: 40),
                        Text('My Account')
                      ],
                    ),
                    Column(
                      children: [
                        //Icon(Icons.account_box, size: 40),
                        Text('My Settings')
                      ],
                    ),
                    Column(
                      children: [
                        //Icon(Icons.lightbulb_circle_outlined, size: 40),
                        Text('My Idea')
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Icon(Icons.account_box, size: 40),
                        //Text('My Account')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.settings, size: 40),
                        //Text('My Settings')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.lightbulb_circle_rounded, size: 40),
                        //Text('My Idea')
                      ],
                    ),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Grid View Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(appBar: AppBar(
        title: Text(_title),
      ),
      body: MyStatefulWidget(),),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        padding: EdgeInsets.all(20),
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.orange[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.green[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.red[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blue[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.purple[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blueGrey[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.amber[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.indigo[200],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.green[200],
          ),
        ],
      ),
    );
  }
}
*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      home: MyTabBarClass(),
    );
  }
}
class MyTabBarClass extends StatefulWidget {
  const MyTabBarClass({super.key});

  @override
  State<MyTabBarClass> createState() => _MyTabBarClassState();
}

class _MyTabBarClassState extends State<MyTabBarClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.android),text: 'Android Phone',),
            Tab(icon: Icon(Icons.phone_iphone),text: 'Iphone',),
            Tab(icon: Icon(Icons.phone_iphone),text: 'Iphone 14 pro max',),

          ],
        ),
        title: Text('Tab Bar clickable interface'),
      ),
      body: TabBarView(
        children: [
          Center(child: Text('You have Android'),),
          Center(child: Text('You have Iphone'),),
          Center(child: Text('You have Iphone 14 pro max'),),

        ],
      ),
    ));
  }
}
*/

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Grid View Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(appBar: AppBar(
        title: Text(_title),
      ),
        body: MyStatefulWidget(),),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        padding: EdgeInsets.all(20),
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.orange[200]),
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            //color: Colors.orange[200],
            
            
            child: Column(
              children: [
                Icon(Icons.home, size: 40),
                SizedBox(height: 15),
                Text("Home")
              ],
            )
              
            ),
            

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.green[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Icon(Icons.mail, size: 40),
                  SizedBox(height: 15),
                  Text("Email")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.red[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Icon(Icons.alarm, size: 40),
                  SizedBox(height: 15),
                  Text("Alarm")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.blue[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Icon(Icons.wallet, size: 40),
                  SizedBox(height: 15),
                  Text("Wallet")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.purple[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Icon(Icons.backup, size: 40),
                  SizedBox(height: 15),
                  Text("Backup")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.blueGrey[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.book, size: 40),
                  SizedBox(height: 15),
                  Text("Book")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.amber[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.camera, size: 40),
                  SizedBox(height: 15),
                  Text("Camera")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.indigo[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.person, size: 40),
                  SizedBox(height: 15),
                  Text("Person")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.green[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.print, size: 40),
                  SizedBox(height: 15),
                  Text("Print")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.orange[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.phone, size: 40),
                  SizedBox(height: 15),
                  Text("Phone")])
          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.green[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.notes, size: 40),
                  SizedBox(height: 15),
                  Text("Notes")])

          ),
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)), color: Colors.red[200],),
            padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
            child: Column(
                children: [Icon(Icons.music_note, size: 40),
                  SizedBox(height: 15),
                  Text("Music")])
          ),
        ],
      ),
    );
  }
}
*/









