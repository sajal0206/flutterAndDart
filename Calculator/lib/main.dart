import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.lime,
        backgroundColor: Color(12),
      ),
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {
  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  Widget custombutton(String btnValue) {
    return Expanded(
      child: OutlineButton(
        onPressed: () => btnClick(btnValue),
        splashColor: Colors.amber,
        highlightColor: Colors.orange[50],
        padding: EdgeInsets.all(25),
        textColor: Colors.blue,
        borderSide: BorderSide(color: Colors.black26),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Text(
          "$btnValue",
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  int num1 = 0;
  int num2 = 0;
  String output = "";
  String result = "";
  String operation = "";
  void btnClick(String btnValue) {
    if (btnValue == "C") {
      num1 = 0;
      num2 = 0;
      output = "";
      result = "";
    } else if (btnValue == "+" ||
        btnValue == "-" ||
        btnValue == "x" ||
        btnValue == "/") {
      result = "";
      operation = btnValue;
      num1 = int.parse(output);
    } else if (btnValue == "=") {
      num2 = int.parse(output);
      if (operation == "+") {
        result = (num1 + num2).toString();
      }
      if (operation == "-") {
        result = (num1 - num2).toString();
      }
      if (operation == "x") {
        result = (num1 * num2).toString();
      }
      if (operation == "/") {
        result = (num1 ~/ num2).toString();
      }
    } else {
      result = int.parse(output + btnValue).toString();
    }
    setState(() {
      output = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.amber,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                      ),
                    ],
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "$output",
                    style: new TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("+"),
              ],
            ),
            Row(
              children: [
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("-"),
              ],
            ),
            Row(
              children: [
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("x"),
              ],
            ),
            Row(
              children: [
                custombutton("C"),
                custombutton("0"),
                custombutton("="),
                custombutton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
