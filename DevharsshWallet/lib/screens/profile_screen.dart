import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      drawer: AppDrawer(),
      body: Profile(),
    );
  }
}
