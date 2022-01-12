import 'package:flutter/material.dart';

AppBar topBar = AppBar(
  backgroundColor: Color(0XAA212121),
  leading: Padding(
    padding: EdgeInsets.only(left: 5),
    child: Image.asset(
      "assets/icon.png",
      // fit: BoxFit.contain,
    ),
  ),
  title: Text(
    "YOUTUBE",
    style: new TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 22,
      fontFamily: "times new roman",
    ),
  ),
  actions: [
    Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Icon(
            Icons.search,
            size: 22,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 22),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.deepOrange,
            child: Text(
              "Y",
              style: new TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  ],
);

BottomAppBar bottomBar = BottomAppBar(
  color: Color(0XAA212121),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home_filled,
            size: 22,
          ),
          Text(
            "Home",
            style: new TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.explore_outlined,
            size: 22,
            color: Colors.white24,
          ),
          Text(
            "Explore",
            style: new TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white24,
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.folder_open_outlined,
            size: 22,
            color: Colors.white24,
          ),
          Text(
            "Subscriptions",
            style: new TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white24,
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.library_music_outlined,
            size: 22,
            color: Colors.white24,
          ),
          Text(
            "Library",
            style: new TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white24,
            ),
          ),
        ],
      ),
    ],
  ),
);
