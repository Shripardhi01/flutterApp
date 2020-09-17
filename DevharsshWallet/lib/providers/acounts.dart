import 'dart:convert';
import 'package:flutter/material.dart';

import './account.dart';

class Accounts with ChangeNotifier {
  List<Account> _accounts = [
    Account(
        acountNo: '1',
        depositeAmount: 5000,
        date: '12/09/2020',
        roi: 1.5,
        status: 'Approved'),
    Account(
        acountNo: '2',
        depositeAmount: 10000,
        date: '15/09/2020',
        roi: 1.5,
        status: 'Pending'),
    Account(
        acountNo: '3',
        depositeAmount: 15000,
        date: '02/08/2020',
        roi: 1.5,
        status: 'Approved'),
  ];

  List<Account> get accounts {
    return [..._accounts];
  }

  Account getAccountById(String id) {
    return _accounts.firstWhere((element) => element.acountNo == id);
  }
}
