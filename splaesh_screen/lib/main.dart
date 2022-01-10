import 'dart:async';

import 'package:flutter/material.dart';

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
      title: "Screen Splashing",
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
  @override
  void initState() {
    super.initState();
    debugPrint(".........Started Splash Screen.......");
    Timer(Duration(seconds: 1), finish);
  }

  void finish() {
    debugPrint("..........Finished.......");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
              Text(
                "\tHello",
                style: new TextStyle(
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
