import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intorduction/Pages/Home_page.dart';
import 'package:intorduction/utlities/routess.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedbutton = false;
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
              "Welcome $name",
              style: GoogleFonts.pacifico(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: " Enter Username",
                        labelText: "Username",
                        hintStyle: TextStyle(fontSize: 15.0),
                        labelStyle: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                    cursorColor: Colors.blueAccent,
                    onChanged: (
                      value,
                    ) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
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
                  InkWell(
                    // hoverColor: Colors.deepPurpleAccent,
                    onTap: () {
                      Navigator.pushNamed(context, Myroutes.homeRoutes);
                      setState(() {
                        changedbutton = true;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 5),
                      width: changedbutton?40:100,
                      height: 40,
                      child: changedbutton?Icon(Icons.done,color: Colors.white,):Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // shape: changedbutton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changedbutton ? 40 : 5),
                          color: Colors.blueAccent),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(
                  //       backgroundColor: Colors.blueAccent,
                  //       elevation: 10.0,
                  //       minimumSize: Size(100, 40)),
                  // )
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
