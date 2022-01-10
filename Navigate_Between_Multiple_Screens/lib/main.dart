import 'package:flutter/material.dart';
import 'second.dart';
import 'thirdScreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/second': (context) => second(),
        '/third': (context) => thirdScreen(),
      },
      title: "Navigation",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation",
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
              "Home Page",
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
                  Navigator.pushNamed(context, '/second');
                },
                child: Text(
                  "!! Go to Second !!",
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
                  Navigator.pushNamed(context, '/third');
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
