import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/account_list.dart';
import '../widgets/app_drawer.dart';

class ViewAccountsScreen extends StatefulWidget {
  static const routeName = '/viewAccounts';
  @override
  _ViewAccountsScreenState createState() => _ViewAccountsScreenState();
}

class _ViewAccountsScreenState extends State<ViewAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
      ),
      drawer: AppDrawer(),
      body: AccountList(),
    );
  }
}
