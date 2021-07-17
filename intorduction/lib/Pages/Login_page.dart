import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu",
            textAlign: TextAlign.center,
          ),
        ),
        drawer: Drawer(),
        body: Center(
          child: Text(
            "Login page",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
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
              Icons.book_online,
              size: 50.0,
              color: Colors.blueGrey,
            ),
          )
        ]),
      ),
    );
  }
}
