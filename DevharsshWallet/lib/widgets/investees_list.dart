import 'package:flutter/material.dart';
import '../providers/acounts.dart';
import '../screens/account_screen.dart';

class InvesteesList extends StatelessWidget {
  void selectAccount(BuildContext context, String id) {
    Navigator.of(context).pushNamed(
      AccountScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final accountsData = Provider.of<Accounts>(context);
    final accounts = Accounts().accounts;
    // final accounts = accountsData.accounts;

    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: accounts.length,
      itemBuilder: (ctx, i) {
        return Card(
          child: ListTile(
            onTap: () => selectAccount(context, accounts[i].acountNo),
            leading: accounts[i].status == 'Approved'
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 40,
                  )
                : Icon(
                    Icons.warning,
                    color: Colors.orangeAccent,
                  ),
            title: Text(
              'A/c No: ' + accounts[i].acountNo,
            ),
            subtitle: Text('date: ' + accounts[i].date),
            trailing: Text(
              accounts[i].depositeAmount.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
