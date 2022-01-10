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

  Future _showAlert(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Choose Your Hobbies'),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"))
        ],
        content: Container(
          height: 200,
          width: 350,
          child: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
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
                    Navigator.of(context).pop();
                    _showAlert(context);
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
                    Navigator.of(context).pop();
                    _showAlert(context);
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
                    Navigator.of(context).pop();
                    _showAlert(context);
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
                    Navigator.of(context).pop();
                    _showAlert(context);
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
                    Navigator.of(context).pop();
                    _showAlert(context);
                  },
                  title: choice[4],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlert(context);
              },
              child: Text("Open Dialog"),
            ),
            Text("Your Choices" + selected.toString()),
          ],
        ),
      ),
    );
  }
}
