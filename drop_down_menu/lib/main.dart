import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App With Drop Down Menu",
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
  String dropMenuValue = "";
  String dropMenuValue2 = "";
  String dropHintValue = "Choose Category";
  String dropHintValue2 = "Choose Type";
  List<DropdownMenuItem<String>> secondList = [];

  List<DropdownMenuItem<String>> get firstList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        child: Text("Apps"),
        value: "Apps",
      ),
      DropdownMenuItem(
        child: Text("Games"),
        value: "Games",
      ),
      DropdownMenuItem(
        child: Text("Movies"),
        value: "Movies",
      ),
      DropdownMenuItem(
        child: Text("Songs"),
        value: "Songs",
      ),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get appList {
    List<DropdownMenuItem<String>> menuItems2 = [
      DropdownMenuItem(
        child: Text("Education"),
        value: "Education",
      ),
      DropdownMenuItem(
        child: Text("Designing"),
        value: "Designing",
      ),
      DropdownMenuItem(
        child: Text("Creativity"),
        value: "Creativity",
      ),
    ];
    return menuItems2;
  }

  List<DropdownMenuItem<String>> get gameList {
    List<DropdownMenuItem<String>> menuItems2 = [
      DropdownMenuItem(
        child: Text("FPS"),
        value: "FPS",
      ),
      DropdownMenuItem(
        child: Text("Arcade"),
        value: "Arcade",
      ),
      DropdownMenuItem(
        child: Text("Action"),
        value: "Action",
      ),
    ];
    return menuItems2;
  }

  List<DropdownMenuItem<String>> get movieList {
    List<DropdownMenuItem<String>> menuItems2 = [
      DropdownMenuItem(
        child: Text("Horror"),
        value: "Horror",
      ),
      DropdownMenuItem(
        child: Text("Sci-Fi"),
        value: "Sci-Fi",
      ),
      DropdownMenuItem(
        child: Text("Romantic"),
        value: "Romantic",
      ),
    ];
    return menuItems2;
  }

  List<DropdownMenuItem<String>> get songList {
    List<DropdownMenuItem<String>> menuItems2 = [
      DropdownMenuItem(
        child: Text("Couple"),
        value: "Couple",
      ),
      DropdownMenuItem(
        child: Text("Wedding"),
        value: "Wedding",
      ),
      DropdownMenuItem(
        child: Text("Sufi"),
        value: "Sufi",
      ),
    ];
    return menuItems2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton(
                style: new TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                hint: Text("$dropHintValue"),
                items: firstList,
                onChanged: (value) {
                  setState(() {
                    dropHintValue = value.toString();

                    if (dropHintValue == "Apps") {
                      secondList = [];
                      secondList = appList;
                    } else if (dropHintValue == "Games") {
                      secondList = [];
                      secondList = gameList;
                    } else if (dropHintValue == "Movies") {
                      secondList = [];
                      secondList = movieList;
                    } else if (dropHintValue == "Songs") {
                      secondList = [];
                      secondList = songList;
                    } else {
                      secondList = [];
                    }
                  });
                }),
            DropdownButton(
              style: new TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              hint: Text("$dropHintValue2"),
              disabledHint: Text("Please Choose Category First"),
              items: secondList,
              onChanged: (value) {
                setState(() {
                  dropMenuValue2 = value.toString();
                  dropHintValue2 = value.toString();
                });
              },
            ),
            Text("Your Choice: " + dropMenuValue2),
          ],
        ),
      ),
    );
  }
}
