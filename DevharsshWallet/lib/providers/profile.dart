import 'package:flutter/foundation.dart';

class Profile with ChangeNotifier {
  final String name;
  final String mobile;
  final String email;
  final String address;
  final String b_name;
  final String b_ifsc;
  final String b_accno;
  final String b_address;
  final String approval;
  final String approval_date;
  Profile(
      {this.name,
      this.mobile,
      this.email,
      this.address,
      this.b_accno,
      this.b_ifsc,
      this.b_name,
      this.b_address,
      this.approval,
      this.approval_date});
}
