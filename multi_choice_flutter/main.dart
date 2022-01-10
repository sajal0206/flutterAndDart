import 'package:alert_check_box/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App WIth Alert CheckBox",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: home(),
    );
  }
}
