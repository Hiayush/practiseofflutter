import 'package:flutter/material.dart';
import 'package:intorduction/Pages/Home_page.dart';
import 'package:intorduction/utlities/routess.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.contain,
              height: 300.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: " Enter Username",
                        labelText: "Usernmae",
                        hintStyle: TextStyle(fontSize: 15.0),
                        labelStyle: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " Enter password",
                        labelText: "Password",
                        hintStyle: TextStyle(fontSize: 15.0),
                        labelStyle: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.homeRoutes);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        elevation: 20.0,
                        minimumSize: Size(100, 40)),
                  )
                ],
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
      ),
    );
  }
}
