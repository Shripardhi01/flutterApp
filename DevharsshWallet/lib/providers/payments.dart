import 'package:flutter/material.dart';

import './payment.dart';

class Payments with ChangeNotifier {
  List<Payment> _payments = [
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '12/09/2020',
        roi: 1.5,
        status: 'Approved'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '15/09/2020',
        roi: 1.5,
        status: 'Pending'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '02/08/2020',
        roi: 1.5,
        status: 'Approved'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '12/09/2020',
        roi: 1.5,
        status: 'Approved'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '15/09/2020',
        roi: 1.5,
        status: 'Pending'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '02/08/2020',
        roi: 1.5,
        status: 'Approved'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '12/09/2020',
        roi: 1.5,
        status: 'Approved'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '15/09/2020',
        roi: 1.5,
        status: 'Pending'),
    Payment(
        acountNo: '1',
        depositeAmount: 50,
        date: '02/08/2020',
        roi: 1.5,
        status: 'Approved'),
  ];

  List<Payment> get payments {
    return [..._payments];
  }

  Payment getPaymentById(String id) {
    return _payments.firstWhere((element) => element.acountNo == id);
  }
}
