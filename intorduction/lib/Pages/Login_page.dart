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
  final _formKey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changedbutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeRoutes);
      setState(() {
        changedbutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/bg15-2.png",
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 10.0),
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password lenght is too short";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.pinkAccent.shade400,
                      borderRadius:
                          BorderRadius.circular(changedbutton ? 40 : 10),
                      child: InkWell(
                        splashColor: Colors.deepPurple,
                        // hoverColor: Colors.deepPurpleAccent,
                        onTap: () => movetoHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changedbutton ? 40 : 100,
                          height: 40,
                          child: changedbutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                          alignment: Alignment.center,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
