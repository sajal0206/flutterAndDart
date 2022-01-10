import 'package:flutter/material.dart';
import 'second.dart';

class thirdScreen extends StatefulWidget {
  @override
  _thirdScreenState createState() => _thirdScreenState();
}

class _thirdScreenState extends State<thirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation-3",
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
              "Third Page",
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
                      builder: (context) => second(),
                    ),
                  );
                },
                child: Text(
                  "!! Go To Second !!",
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
