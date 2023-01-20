import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:time_maintain/helper/route_helper.dart';
import 'package:lottie/lottie.dart';
import 'package:time_maintain/util/image.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  // choseScreen() {
  //   var userId = box.read('id');
  //   if (userId != null) {
  //     Get.toNamed(home);
  //   } else {
  //     Get.toNamed(welcome);
  //   }
  // }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (){
      Get.toNamed(navbar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 140.w,
              height: 140.h,
              child: Center(
                child: Lottie.asset(Images.clock),
              ),
            ),
          ),
        ],
      ),
    );
  }
}