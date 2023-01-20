import 'package:flutter/material.dart';
import 'package:time_maintain/util/app_color.dart';
class payslipScreen extends StatefulWidget {
  const payslipScreen({Key? key}) : super(key: key);

  @override
  State<payslipScreen> createState() => _leaveScrrenState();
}

class _leaveScrrenState extends State<payslipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(child: Text('Payslip page',style: TextStyle(color: Colors.red),)),
        ),
      ),
    );
  }
}
