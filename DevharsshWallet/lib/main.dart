import 'package:flutter/material.dart';

import './screens/dashboard_screen.dart';
import './widgets/app_drawer.dart';
import './screens/auth_screen.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devharsh Wallet',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        RegisterScreen.routeName: (ctx) => RegisterScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devharsh Wallet'),
      ),
      body: DashboardScreen(),
      // drawer: AppDrawer(),
    );
  }
}
