import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intorduction/Pages/Home_page.dart';
import 'package:intorduction/Pages/Login_page.dart';
import 'package:intorduction/utlities/routess.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green.shade400,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primaryColor: Colors.deepPurple.shade400,
          fontFamily: GoogleFonts.pacifico().fontFamily,
          //primaryTextTheme: GoogleFonts.pacificoTextTheme()
          ),
      darkTheme: ThemeData(
          brightness: Brightness.dark, primaryColorLight: Colors.white),
      initialRoute: "/",
      routes: {
        Myroutes.homeRoutes: (context) => HomePage(),
        Myroutes.loginRoutes: (context) => LoginPage()
      },
    );
  }
}
