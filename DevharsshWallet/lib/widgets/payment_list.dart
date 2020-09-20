import 'package:flutter/material.dart';
import '../providers/Payments.dart';

class PaymentList extends StatelessWidget {
  double h = AppBar().preferredSize.height;
  @override
  Widget build(BuildContext context) {
    // final accountsData = Provider.of<Accounts>(context);
    final payments = Payments().payments;
    // final accounts = accountsData.accounts;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: (MediaQuery.of(context).size.height - h) * 0.85,
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: payments.length,
              itemBuilder: (ctx, i) {
                return Card(
                  child: ListTile(
                    // onTap: () => selectAccount(context, payments[i].acountNo),
                    leading: Text(
                      payments[i].depositeAmount.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: payments[i].status == 'Approved'
                        ? Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 40,
                          )
                        : Icon(
                            Icons.sms_failed,
                            color: Colors.orangeAccent,
                          ),
                    title: Text(
                      'ROI ' + payments[i].roi.toString(),
                    ),
                    subtitle: Text('date: ' + payments[i].date),
                  ),
                );
              },
            ),
          ),
          RaisedButton(
            child: Text('Account Detail'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Colors.pink,
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
