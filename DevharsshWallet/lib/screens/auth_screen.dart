import 'package:flutter/material.dart';
import './login_screen.dart';
import './register_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              // SizedBox(height: 100.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 250.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()));
                    },
                    child: Container(
                      width: 150.0,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5.0,
                                offset: Offset(0, 2.0))
                          ]),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child: Container(
                      width: 150.0,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5.0,
                                offset: Offset(0, 2.0))
                          ]),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
