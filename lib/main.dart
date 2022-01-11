import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:internet_seneitive_image_viewer/imagePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Internet Sensitive App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
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
  late StreamSubscription<dynamic> connectivitySubscription;
  late ConnectivityResult result;

  void checkInternet() async {
    var initResult = await (Connectivity().checkConnectivity());
    // print("from check = " + initResult.toString());
    if (initResult == ConnectivityResult.mobile ||
        initResult == ConnectivityResult.wifi) {
      result = initResult;
    } else if (initResult == ConnectivityResult.none) {
      exitDialog();
    }
  }

  @override
  void initState() {
    super.initState();
    checkInternet();
    connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((result) {
      if (result.toString() == "ConnectivityResult.mobile" ||
          result.toString() == "ConnectivityResult.wifi") {
        // print("from onchange = " + result.toString());
        pushScreen();
      } else if (result.toString() == "ConnectivityResult.none") {
        // print("from onchange = " + result.toString());
        exitDialog();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    connectivitySubscription.cancel();
  }

  void pushScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => imagePage(),
      ),
    );
  }

  void exitDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Internet Error"),
              content: Text("Please Connect To Internet And Try Again."),
              actions: [
                FlatButton(
                  onPressed: () => SystemChannels.platform
                      .invokeMethod<void>('SystemNavigator.pop'),
                  child: Text("Exit"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Checking Your Internet Connection."),
            ),
          ],
        ),
      ),
    );
  }
}
