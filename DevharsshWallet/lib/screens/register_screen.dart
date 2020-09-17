import 'package:flutter/material.dart';
import './login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _hidePassword = true;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          // title: Text('Login'),
          ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: _screenSize.height,
              width: _screenSize.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 2.0,
                              offset: Offset(0, 5.0)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: "Create User Name*",
                                      labelStyle: TextStyle(fontSize: 14.0),
                                      suffixIcon:
                                          Icon(Icons.person_pin, size: 17.0)),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: "Full Name",
                                      labelStyle: TextStyle(fontSize: 14.0),
                                      suffixIcon:
                                          Icon(Icons.person, size: 17.0)),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: "Mobile Number*",
                                      labelStyle: TextStyle(fontSize: 14.0),
                                      suffixIcon:
                                          Icon(Icons.phone, size: 17.0)),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: "Email Id*",
                                      labelStyle: TextStyle(fontSize: 14.0),
                                      suffixIcon: Icon(Icons.mail, size: 17.0)),
                                ),
                                TextField(
                                  obscureText: _hidePassword,
                                  decoration: InputDecoration(
                                      labelText: "Create Password*",
                                      labelStyle: TextStyle(fontSize: 14.0),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _hidePassword = !_hidePassword;
                                            });
                                          },
                                          icon: Icon(
                                              _hidePassword
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              size: 17.0))),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 10),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)),
                                onPressed: () {},
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.white,
                                child: Text("Log In".toUpperCase(),
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5.0),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(LoginScreen.routeName);
                            },
                            child: Text("Log in",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
