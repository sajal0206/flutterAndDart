import 'package:flutter/material.dart';
import 'package:flutter_databases/dbhelper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Databases",
      theme: ThemeData.dark(),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final dbhelper = Databasehelper.instance;

  void insertData() async {
    Map<String, dynamic> row = {
      Databasehelper.columnName: "Sajal",
      Databasehelper.columnAge: 21
    };
    final id = await dbhelper.insert(row);
    print(id);
  }

  void queryAllData() async {
    var allRows = await dbhelper.queryAll();
    // allRows.forEach((element) {
    print(allRows.toString());
    // });
  }

  void querySpecificData() async {
    var allRows = await dbhelper.querySpecific(3);
    allRows.forEach((element) {
      print(allRows.toString());
    });
  }

  void deleteData() async {
    var reply = await dbhelper.deleteData(3);
    print(reply);
  }

  void updateData() async {
    var reply = await dbhelper.update(1);
    print(reply);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Databases"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                insertData();
              },
              child: Text("Insert"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                queryAllData();
              },
              child: Text("Query"),
              color: Colors.lightBlue,
            ),
            RaisedButton(
              onPressed: () {
                querySpecificData();
              },
              child: Text("Query Specific"),
              color: Colors.amber,
            ),
            RaisedButton(
              onPressed: () {
                updateData();
              },
              child: Text("Update"),
              color: Colors.deepOrange,
            ),
            RaisedButton(
              onPressed: () {
                deleteData();
              },
              child: Text("Delete"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
