import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña Tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //MyApp

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage + StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Creates border
                color: Colors.deepPurple), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.access_alarm)),
              Tab(icon: Icon(Icons.account_box)),
              Tab(icon: Icon(Icons.add_call)),
              Tab(icon: Icon(Icons.access_time_sharp)),
            ],
          ),
          title: Text('Tabs Linda Moreno'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.access_alarm, size: 350),
            Icon(Icons.account_box, size: 350),
            Icon(Icons.add_call, size: 350),
            Icon(Icons.access_time_sharp, size: 350),
          ],
        ),
      ),
    ); //DefaultTabController
  }
} //_MyHomePageState
