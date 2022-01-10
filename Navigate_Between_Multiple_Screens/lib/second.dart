import 'package:flutter/material.dart';
import 'thirdScreen.dart';

class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation-2",
          style: new TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Second Page",
              style: new TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "!! Go To Main !!",
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                elevation: 3,
                splashColor: Colors.blue[200],
                color: Colors.blue[300],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => thirdScreen(),
                    ),
                  );
                },
                child: Text(
                  "!! Go To Third !!",
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                elevation: 3,
                splashColor: Colors.blue[200],
                color: Colors.blue[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
