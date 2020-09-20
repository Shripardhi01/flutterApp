import 'package:flutter/material.dart';

import '../widgets/investees_list.dart';
import '../widgets/app_drawer.dart';

class ViewInvesteesScreen extends StatefulWidget {
  static const routeName = '/viewAccounts';
  @override
  _ViewInvesteesScreenState createState() => _ViewInvesteesScreenState();
}

class _ViewInvesteesScreenState extends State<ViewInvesteesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investors'),
      ),
      drawer: AppDrawer(),
      body: InvesteesList(),
    );
  }
}
