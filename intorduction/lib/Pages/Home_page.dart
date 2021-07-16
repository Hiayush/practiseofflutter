import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int x = 30;
  String s = "ayush";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(),
      body: Center(
          child: Text(
              "hello you are in $x day series of flutter development by $s")),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
            size: 50.0,
            color: Colors.red,
          ),
        ),
        BottomNavigationBarItem(
          label: "School",
          icon: Icon(
            Icons.school,
            size: 50.0,
            color: Colors.blueAccent,
          ),
        ),
        BottomNavigationBarItem(
          label: "Busines",
          icon: Icon(
            Icons.business,
            size: 50.0,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
