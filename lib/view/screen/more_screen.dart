import 'package:flutter/material.dart';
import 'package:time_maintain/util/app_color.dart';
class moreScreen extends StatefulWidget {
  const moreScreen({Key? key}) : super(key: key);

  @override
  State<moreScreen> createState() => _leaveScrrenState();
}

class _leaveScrrenState extends State<moreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Card(

              child: Center(child: Text('More page',style: TextStyle(color: AppColor.secondaryHeaderColor),))),
        ),
      ),
    );
  }
}
