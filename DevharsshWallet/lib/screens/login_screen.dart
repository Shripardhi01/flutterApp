import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidePassword = true;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  var _isLoading = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future _performLogin() async {
    print(_userNameController.text);
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          // title: Text('Login'),
          ),
      body: SingleChildScrollView(
        child: Container(
          height: _screenSize.height,
          width: _screenSize.width,
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
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          if (_isLoading) CircularProgressIndicator(),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "User Name*",
                                labelStyle: TextStyle(fontSize: 14.0),
                                suffixIcon: Icon(Icons.person, size: 17.0)),
                            keyboardType: TextInputType.text,
                            controller: _userNameController,
                          ),
                          TextField(
                            obscureText: _hidePassword,
                            decoration: InputDecoration(
                                labelText: "Password*",
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
                            controller: _passwordController,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Forgot Your Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                    fontSize: 14.0),
                              ),
                            ),
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
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Text("Log In".toUpperCase(),
                              style: TextStyle(fontSize: 14)),
                          onPressed: () => _performLogin(),
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
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text("Register Now",
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
    );
  }
}
