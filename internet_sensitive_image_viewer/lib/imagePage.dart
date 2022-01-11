import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';

class imagePage extends StatefulWidget {
  const imagePage({Key? key}) : super(key: key);

  @override
  _imagePageState createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  List<String> nature = [
    "https://source.unsplash.com/all/?nature",
    "https://source.unsplash.com/all/?natural",
    "https://source.unsplash.com/all/?scenes"
  ];
  List<String> scifi = [
    "https://source.unsplash.com/all/?sci-fi",
    "https://source.unsplash.com/all/?scifi",
    "https://source.unsplash.com/all/?sciencefiction"
  ];
  List<String> game = [
    "https://source.unsplash.com/all/?games",
    "https://source.unsplash.com/all/?game",
    "https://source.unsplash.com/all/?gaming"
  ];
  Widget cards(String src) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.network(src),
    );
  }

  late StreamSubscription connectivitySubscription;
  bool exitShown = false;

  void checkInternet() {
    var checkInternet = Connectivity().checkConnectivity();
    if (checkInternet == ConnectivityResult.none) {
      exitDialog();
    } else {
      if (exitShown) {
        exitShown = false;
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    checkInternet();
    connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((result) {
      // print("from onchange = " + result.toString());
      if (result.toString() == "ConnectivityResult.none") {
        exitShown = true;
        exitDialog();
      } else {
        if (exitShown) {
          exitShown = false;
          Navigator.of(context).pop();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void exitDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Internet Error"),
              content: Text("Please Connect To Internet To Continue Using."),
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Image Viewer",
            style: new TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.brown,
            indicatorColor: Colors.brown,
            tabs: [
              Tab(
                text: "Nature",
              ),
              Tab(
                text: "Sci-Fi",
              ),
              Tab(
                text: "Games",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: SingleChildScrollView(
                child: ListBody(
                  children: [
                    cards(nature[0]),
                    cards(nature[1]),
                    cards(nature[2]),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(
                child: ListBody(
                  children: [
                    cards(scifi[0]),
                    cards(scifi[1]),
                    cards(scifi[2]),
                  ],
                ),
              ),
            ),
            Tab(
              child: SingleChildScrollView(
                child: ListBody(
                  children: [
                    cards(game[0]),
                    cards(game[1]),
                    cards(game[2]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
