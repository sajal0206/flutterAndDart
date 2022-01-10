import 'dart:async';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Timer",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  late TabController tb;
  int hour = 0;
  int minute = 0;
  int second = 0;
  bool started = true;
  bool stoped = false;
  bool cancelTimer = false;
  int timerTime = 0;

  String timeToDisplay = "";
  void initState() {
    tb = TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    tb.dispose();
    super.dispose();
  }

  void start() {
    timerTime = ((hour * 3600) + (minute * 60) + second);
    setState(() {
      if (timerTime > 0) {
        stoped = true;
        started = false;
        cancelTimer = false;
      } else {
        timeToDisplay = "Please Select Time";
        stoped = false;
        started = true;
        cancelTimer = true;
      }
    });
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timerTime < 1 || cancelTimer) {
          t.cancel();
          timeToDisplay = "";
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => home(),
            ),
          );
        } else {
          timerTime = timerTime - 1;
          timeToDisplay = timerTime.toString();
        }
      });
    });
  }

  void stop() {
    setState(() {
      stoped = false;
      started = true;
      cancelTimer = true;
    });
  }

  Widget timer() {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        "HH",
                        style: new TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    NumberPicker(
                      value: hour,
                      minValue: 0,
                      maxValue: 23,
                      itemWidth: 80,
                      onChanged: (val) {
                        setState(() {
                          hour = val;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        "MM",
                        style: new TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    NumberPicker(
                      value: minute,
                      minValue: 0,
                      maxValue: 60,
                      itemWidth: 80,
                      onChanged: (val) {
                        setState(() {
                          minute = val;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        "SS",
                        style: new TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    NumberPicker(
                      value: second,
                      minValue: 0,
                      maxValue: 60,
                      itemWidth: 80,
                      onChanged: (val) {
                        setState(() {
                          second = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "${timeToDisplay}",
              style: new TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.amber,
                  elevation: 5,
                  splashColor: Colors.lightBlue,
                  highlightColor: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  onPressed: started ? start : null,
                  child: Text(
                    "Start",
                  ),
                ),
                RaisedButton(
                  color: Colors.amber,
                  elevation: 5,
                  splashColor: Colors.lightBlue,
                  highlightColor: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  onPressed: stoped ? stop : null,
                  child: Text(
                    "Stop",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Timer",
            ),
            Tab(
              text: "StopWatch",
            ),
          ],
          controller: tb,
        ),
      ),
      body: TabBarView(
        children: [
          timer(),
          Tab(
            text: "StopWatch",
          ),
        ],
        controller: tb,
      ),
    );
  }
}
