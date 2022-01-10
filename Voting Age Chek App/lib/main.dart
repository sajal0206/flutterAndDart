import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Voting Age Checker",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String name = "";
  String user = "";
  String validity = "";
  int age = 0;
  int age2 = 0;

  void check() {
    setState(() {
      user = name;
      age2 = age;
      if (age2 == 0 && age2 > 0) {
        validity = "Please Enter A Valid Age";
        name = "";
        age = 0;
      } else if (age2 > 0 && age2 < 18) {
        validity = "You Are Not Eligible To Vote";
        name = "";
        age = 0;
      } else {
        validity = "You Are Eligible To Vote";
        name = "";
        age = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
              ),
              splashColor: Colors.deepOrange[400],
              highlightColor: Colors.red,
              iconSize: 40,
            ),
            Text(
              "Voting Age Checker",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Hello ${user} ${validity}",
                  style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  autofocus: true,
                  autocorrect: true,
                  maxLength: 8,
                  decoration: InputDecoration(
                    hintText: "User",
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    helperText: "User Name",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  onChanged: (value2) {
                    age = int.parse(value2);
                  },
                  maxLength: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Age",
                    hintText: "18",
                    helperText: "User Age",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: RaisedButton(
                  color: Colors.deepOrange,
                  textColor: Colors.blue[900],
                  onPressed: check,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.verified),
                        iconSize: 30,
                      ),
                      Text(
                        "Check",
                        style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
