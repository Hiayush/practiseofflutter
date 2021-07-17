import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            width: 20.0,
            height: 20.0,
          ),Text(
            "Welcome",
            style: GoogleFonts.pacifico(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
          // Scaffold(
          //   appBar: AppBar(
          //     title: Text(
          //       "Menu",
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          //   drawer: Drawer(),
          //   body: Center(
          //     child: Text(
          //       "Login page",
          //       style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          //   bottomNavigationBar:
          //       BottomNavigationBar(items: <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //       label: "Home",
          //       icon: Icon(
          //         Icons.home,
          //         size: 50.0,
          //         color: Colors.red,
          //       ),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "School",
          //       icon: Icon(
          //         Icons.school,
          //         size: 50.0,
          //         color: Colors.blueAccent,
          //       ),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "Business",
          //       icon: Icon(
          //         Icons.business,
          //         size: 50.0,
          //         color: Colors.blueGrey,
          //       ),
          //     )
          //   ]),
          // ),
        ],
      ),
    );
  }
}
