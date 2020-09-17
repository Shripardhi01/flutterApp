import 'package:flutter/material.dart';

import './add_investment_screen.dart';
import './view_accounts_screen.dart';
import '../widgets/app_drawer.dart';
import './account_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devharsh Wallet',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        drawer: AppDrawer(),
      ),
      routes: {
        AddInvestmentScreen.routeName: (ctx) => AddInvestmentScreen(),
        ViewAccountsScreen.routeName: (ctx) => ViewAccountsScreen(),
        AccountScreen.routeName: (ctx) => AccountScreen(),
      },
    );
  }
}
