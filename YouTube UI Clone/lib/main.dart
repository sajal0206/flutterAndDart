import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "You Tube",
      theme: ThemeData.dark(),
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
  video(List content) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Card(
        color: Color(0XAA212121),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Stack(
                children: [
                  Image.asset(content[0]),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black87,
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        child: Text(
                          "20:10",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      content[1],
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(content[2]),
                      Text(
                        content[3],
                        style: new TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0XAA212121),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white30,
                    width: 1,
                  ),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("All"),
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text("Flutter"),
                          color: Color(0XAA383838),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text("Mixes"),
                          color: Color(0XAA383838),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text("Music"),
                          color: Color(0XAA383838),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text("Gaming"),
                          color: Color(0XAA383838),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            video([
              "assets/thumbnail1.jpg",
              "assets/icon.png",
              "Database in Flutter",
              "You Tube • 22K views • 2 days ago"
            ]),
            video([
              "assets/thumbnail2.jpg",
              "assets/icon.png",
              "MySQL & DataTable in Flutter",
              "You Tube • 212K views • 2 hours ago"
            ]),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: bottomBar,
      ),
    );
  }
}
