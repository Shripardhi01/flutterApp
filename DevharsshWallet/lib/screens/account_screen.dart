import 'package:DevharsshWallet/providers/acounts.dart';
import 'package:DevharsshWallet/widgets/payment_list.dart';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/accountDetail';
  @override
  Widget build(BuildContext context) {
    final accountId = ModalRoute.of(context).settings.arguments as String;

    final selectedAccount = Accounts().getAccountById(accountId);
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Text('Payments' + accountId),
        actions: [
          PopupMenuButton(
            // padding: EdgeInsets.only(top: 10.0, right: 5.0),
            elevation: 5,
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Account Detail'),
                value: 'detail',
              ),
              PopupMenuItem(
                child: Text('Withdraw'),
                value: 'withdraw',
              ),
            ],
            onSelected: (_) {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: PaymentList(),
    );
  }
}
