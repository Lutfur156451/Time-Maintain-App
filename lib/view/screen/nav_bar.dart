
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:time_maintain/util/app_color.dart';
import 'package:time_maintain/view/screen/leave_screen.dart';
import 'package:time_maintain/view/screen/main_screen.dart';
import 'package:time_maintain/view/screen/more_screen.dart';
import 'package:time_maintain/view/screen/payslip_screen.dart';


class bottomNavbar extends StatefulWidget {

  @override
  State<bottomNavbar> createState() => _bottom_navbarState();
}

class _bottom_navbarState extends State<bottomNavbar> {
  int _crounteIndex=0;

  final page =[
    mainScreen(),
    leaveScreen(),
    payslipScreen(),
    moreScreen()


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.cardColor,
        elevation: 0,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.hintColor,
        onTap: (int value){
          setState(() {
            _crounteIndex=value;
          });

        },
        currentIndex: _crounteIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled,size: 22.sp,),label: 'Attendance',  ),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons. calendar,size: 17.sp,),label: 'Leave'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.fileInvoice,size: 17.sp,),label: 'Payslip'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bars,size: 17.sp,),label: 'More'),

        ],
      ),
      body: page[_crounteIndex],


    );


  }
}