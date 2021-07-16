import 'package:flutter/material.dart';
import 'package:intorduction/Pages/Home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  var Var = "tuesday";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green.shade400,
      home: HomePage()
    );
  }
}
