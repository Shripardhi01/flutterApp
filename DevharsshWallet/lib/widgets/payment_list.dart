import 'package:flutter/material.dart';
import '../providers/Payments.dart';

class PaymentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final accountsData = Provider.of<Accounts>(context);
    final payments = Payments().payments;
    // final accounts = accountsData.accounts;

    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: payments.length,
      itemBuilder: (ctx, i) {
        return Card(
          child: ListTile(
            // onTap: () => selectAccount(context, payments[i].acountNo),
            leading: payments[i].status == 'Approved'
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
              'A/c No: ' + payments[i].acountNo,
            ),
            subtitle: Text('date: ' + payments[i].date),
            trailing: Text(
              payments[i].depositeAmount.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
