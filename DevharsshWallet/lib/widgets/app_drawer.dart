import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

import '../screens/view_investees_screen.dart';
import '../screens/add_investment_screen.dart';
import '../screens/view_accounts_screen.dart';
import '../screens/profile_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            ),
            child: Column(
              children: [
                CircularProfileAvatar(
                  'assets/images/logo.png',
                  // radius: 100,
                  backgroundColor: Colors.transparent,
                  borderWidth: 10,
                  borderColor: Colors.white,
                  elevation: 5.0,
                  cacheImage: true,
                  onTap: () {
                    // print('adil');
                  },
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Shrikant Pardhi',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Add Investment'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AddInvestmentScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('My Accounts'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ViewAccountsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('View Investees'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ViewInvesteesScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProfileScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.change_history),
            title: Text('Change Password'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Support / Contact Us'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');

              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
              // Provider.of<Auth>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
