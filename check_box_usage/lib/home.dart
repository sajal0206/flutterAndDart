import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<Text> choice = [
    Text("Movie"),
    Text("TV"),
    Text("Game"),
    Text("Music"),
    Text("Singing")
  ];
  List<bool> choiceBool = [false, false, false, false, false];
  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              value: choiceBool[0],
              onChanged: (bool? val) {
                setState(() {
                  if (val != null && val) {
                    choiceBool[0] = val;
                    selected.add("Movie");
                  } else {
                    choiceBool[0] = false;
                    selected.remove("Movie");
                  }
                });
              },
              title: choice[0],
            ),
            CheckboxListTile(
              value: choiceBool[1],
              onChanged: (bool? val) {
                setState(() {
                  if (val != null && val) {
                    choiceBool[1] = val;
                    selected.add("TV");
                  } else {
                    choiceBool[1] = false;
                    selected.remove("TV");
                  }
                });
              },
              title: choice[1],
            ),
            CheckboxListTile(
              value: choiceBool[2],
              onChanged: (bool? val) {
                setState(() {
                  if (val != null && val) {
                    choiceBool[2] = val;
                    selected.add("Game");
                  } else {
                    choiceBool[2] = false;
                    selected.remove("Game");
                  }
                });
              },
              title: choice[2],
            ),
            CheckboxListTile(
              value: choiceBool[3],
              onChanged: (val) {
                setState(() {
                  if (val != null && val) {
                    choiceBool[3] = val;
                    selected.add("Music");
                  } else {
                    choiceBool[3] = false;
                    selected.remove("Music");
                  }
                });
              },
              title: choice[3],
            ),
            CheckboxListTile(
              value: choiceBool[4],
              onChanged: (bool? val) {
                setState(() {
                  if (val != null && val) {
                    choiceBool[4] = val;
                    selected.add("Singing");
                  } else {
                    choiceBool[4] = false;
                    selected.remove("Singing");
                  }
                });
              },
              title: choice[4],
            ),
            Text("Your Choices" + selected.toString()),
          ],
        ),
      ),
    );
  }
}
