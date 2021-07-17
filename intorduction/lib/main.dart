import 'package:flutter/material.dart';
import 'package:intorduction/Pages/Home_page.dart';
import 'package:intorduction/Pages/Login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var Var = "tuesday";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green.shade400,
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.deepPurple.shade400),
      darkTheme: ThemeData(
          brightness: Brightness.dark, primaryColorLight: Colors.white),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/LoginPage": (context) => LoginPage()
      },
    );
  }
}
