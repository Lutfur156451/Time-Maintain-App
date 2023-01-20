import 'package:flutter/material.dart';
import 'package:time_maintain/util/app_color.dart';
class leaveScreen extends StatefulWidget {
  const leaveScreen({Key? key}) : super(key: key);

  @override
  State<leaveScreen> createState() => _leaveScrrenState();
}

class _leaveScrrenState extends State<leaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(child: Text('Leave page',style: TextStyle(color: AppColor.primaryColor),)),
        ),
      ),
    );
  }
}
