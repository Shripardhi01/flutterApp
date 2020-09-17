import 'package:flutter/foundation.dart';

class Payment with ChangeNotifier {
  final String acountNo;
  final double depositeAmount;
  final String date;
  final double roi;
  final String status;

  Payment(
      {@required this.acountNo,
      @required this.depositeAmount,
      @required this.date,
      @required this.roi,
      @required this.status});
}
