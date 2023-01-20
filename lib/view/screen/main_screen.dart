// import 'package:circle_progress_bar/circle_progress_bar.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:time_maintain/util/app_color.dart';
// import 'package:time_maintain/util/image.dart';
// import 'package:time_maintain/view/base/custom_buttom.dart';
// import 'package:time_maintain/view/screen/bottom_sheet_view.dart';
// import 'package:time_maintain/view/screen/map_screen.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class mainScreen extends StatefulWidget {
//   const mainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<mainScreen> createState() => _mainScreenState();
// }
//
// class _mainScreenState extends State<mainScreen> {
//   TimeOfDay _timeOfDay = TimeOfDay.now();
//   // void _showtimepikar() {
//   //   showTimePicker(context: context, initialTime: TimeOfDay.now())
//   //       .then((value) {
//   //     setState(() {
//   //       _timeOfDay = value!;
//   //     });
//   //   });
//   // }
//
//   var day = DateFormat.MMMMEEEEd().format(DateTime.now());
//
//   //
//   // TimeOfDay _timeOfDay2 = TimeOfDay.now();
//   //
//   // void _showtimepikar2() {
//   //   showTimePicker(context: context, initialTime: TimeOfDay.now())
//   //       .then((value) {
//   //     setState(() {
//   //       _timeOfDay2 = value!;
//   //     });
//   //   });
//   // }
//
//   int i = 0;
//   @override
//   void initState() {
//     GetStorage();
//     super.initState();
//   }
//
//   final box = GetStorage();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: AppColor.cardColor,
//           elevation: 0,
//           leadingWidth: 300,
//           toolbarHeight: 70,
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 12.0),
//             child: Image.asset(Images.logo, fit: BoxFit.cover),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: FaIcon(
//                 FontAwesomeIcons.bell,
//                 color: AppColor.primaryColor,
//               ),
//             )
//           ],
//         ),
//         body: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                   flex: 9,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         color: AppColor.primaryColor,
//                         borderRadius: BorderRadius.only(
//                             bottomRight: Radius.circular(20),
//                             bottomLeft: Radius.circular(20))),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Hi, Steave',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 30,
//                                         color: AppColor.cardColor,
//                                         letterSpacing: 0.5),
//                                   ),
//                                   SizedBox(
//                                     height: 4.h,
//                                   ),
//                                   Text(
//                                     "${day}",
//                                     style: TextStyle(
//                                         color: AppColor.cardColor,
//                                         fontSize: 17,
//                                         letterSpacing: 0.1),
//                                   ),
//                                 ],
//                               ),
//                               ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                       backgroundColor: AppColor.cardColor,
//                                       elevation: 0,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20)),
//                                       side: BorderSide.none),
//                                   onPressed: () {},
//                                   child: Text(
//                                     'Regular',
//                                     style: TextStyle(
//                                         color: AppColor.primaryColor,
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w500),
//                                   ))
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 13.h,
//                         ),
//                         SizedBox(
//                           width: 120.w,
//                           child: CircleProgressBar(
//                             foregroundColor: AppColor.primaryColor,
//                             backgroundColor: Colors.lightBlueAccent,
//                             value: 0.2,
//                             strokeWidth: 10,
//                             reversedDirection: false,
//                             child: Center(
//                                 child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Column(
//                                   children: [
//                                     Text(
//                                       box.read('TotalHour').toString(),
//                                       style: TextStyle(
//                                           color: AppColor.cardColor,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                     Text(
//                                       box.read('TotalMinute').toString(),
//                                       style: TextStyle(
//                                           color: AppColor.cardColor,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   'Worked',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       color: AppColor.cardColor,
//                                       fontSize: 15),
//                                 ),
//                               ],
//                             )),
//                           ),
//                         ),
//                         Center(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 17.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Card(
//                                   elevation: 0,
//                                   color: Colors.transparent,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(right: 8.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 7.0),
//                                           child: Text(
//                                             'In',
//                                             style: TextStyle(
//                                                 color: AppColor.cardColor
//                                                     .withOpacity(0.8),
//                                                 fontSize: 14.sp,
//                                                 fontWeight: FontWeight.w500),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 2.h,
//                                         ),
//                                         Text(
//                                           box.read('InTime').toString(),
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 17.sp,
//                                             color: AppColor.cardColor
//                                                 .withOpacity(0.8),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 12.0, right: 12),
//                                   child: Container(
//                                     width: 1.w,
//                                     height: 30.h,
//                                     color: AppColor.cardColor,
//                                   ),
//                                 ),
//                                 Card(
//                                   elevation: 0,
//                                   color: Colors.transparent,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(right: 8.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 7.0),
//                                           child: Text(
//                                             'Out',
//                                             style: TextStyle(
//                                                 color: AppColor.cardColor
//                                                     .withOpacity(0.8),
//                                                 fontSize: 14.sp,
//                                                 fontWeight: FontWeight.w500),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 1,
//                                         ),
//                                         Text(
//                                           box.read('OutTime').toString(),
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 17.sp,
//                                             color: AppColor.cardColor
//                                                 .withOpacity(0.8),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 12.0, right: 12),
//                                   child: Container(
//                                     width: 1.w,
//                                     height: 30.h,
//                                     color: AppColor.cardColor,
//                                   ),
//                                 ),
//                                 Card(
//                                   color: Colors.transparent,
//                                   elevation: 0,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Balance',
//                                           style: TextStyle(
//                                               color: AppColor.cardColor
//                                                   .withOpacity(0.8),
//                                               fontSize: 14.sp,
//                                               fontWeight: FontWeight.w500),
//                                         ),
//                                         SizedBox(
//                                           height: 1.h,
//                                         ),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               box.read('TotalHour').toString(),
//                                               style: TextStyle(
//                                                 fontSize: 17.sp,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: AppColor.cardColor
//                                                     .withOpacity(0.8),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 1.0, right: 2),
//                                               child: Text(
//                                                 ':',
//                                                 style: TextStyle(
//                                                   fontSize: 17.sp,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: AppColor.cardColor
//                                                       .withOpacity(0.8),
//                                                 ),
//                                               ),
//                                             ),
//                                             Text(
//                                               box
//                                                   .read('TotalMinute')
//                                                   .toString(),
//                                               style: TextStyle(
//                                                 fontSize: 17.sp,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: AppColor.cardColor
//                                                     .withOpacity(0.8),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         // SizedBox(
//                                         //   height: 2.h,
//                                         // ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 14.h,
//                         ),
//                         Center(
//                           child: InkWell(
//                             onTap: () {
//                               showModalBottomSheet(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 context: context,
//                                 builder: (_) => Container(
//
//
//
//
//
//                                   child: bottomSheet(),
//                                 ),
//                               );
//                             },
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 1.2,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                   color: Colors.lightBlueAccent,
//                                   border: Border.all(
//                                       width: 1, color: AppColor.cardColor),
//                                   borderRadius: BorderRadius.circular(8)),
//                               child: Center(
//                                   child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: AppColor.cardColor,
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Text(
//                                     'Punch In',
//                                     style: TextStyle(
//                                         color: AppColor.cardColor,
//                                         fontSize: 17,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ],
//                               )),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Center(
//                           child: DotsIndicator(
//                             dotsCount: 2,
//                             decorator: DotsDecorator(
//                               size: const Size.square(9.0),
//                               activeColor: AppColor.cardColor,
//                               // activeSize: const Size(15.0, 15.0),
//
//                               color: AppColor.cardColor,
//                               activeShape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(6.6)),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 12.h,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Attendance Logs',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: AppColor.cardColor),
//                             ),
//                             SizedBox(
//                               width: 12,
//                             ),
//                             Icon(
//                               Icons.arrow_forward,
//                               color: AppColor.cardColor,
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 4,
//                   child: Container(
//                     child: Padding(
//                       padding:
//                           const EdgeInsets.only(left: 18.0, top: 20, right: 10),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Today's Logs",
//                               style: TextStyle(
//                                   fontSize: 17.sp,
//                                   color: AppColor.disabledColor,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             // SizedBox(
//                             //   height: 5.h,
//                             // ),
//                             // Card(
//                             //   shape: RoundedRectangleBorder(
//                             //     borderRadius: BorderRadius.circular(8),
//                             //   ),
//                             //   child: ListTile(
//                             //     title: Row(
//                             //       children: [
//                             //         Text(box.read('InTime').toString()),
//                             //         Text(' - '),
//                             //         Text(box.read('OutTime').toString()),
//                             //         SizedBox(
//                             //           height: 5.h,
//                             //         ),
//                             //       ],
//                             //     ),
//                             //     trailing: Icon(
//                             //       Icons.arrow_forward_ios,
//                             //       color: AppColor.primaryColor,
//                             //     ),
//                             //     subtitle: Row(
//                             //       children: [
//                             //         Icon(
//                             //           Icons.access_time,
//                             //           color: AppColor.hintColor,
//                             //         ),
//                             //         SizedBox(
//                             //           width: 6.w,
//                             //         ),
//                             //         Text(box.read('TotalHour').toString()),
//                             //         Text(box.read('TotalMinute').toString()),
//                             //         SizedBox(
//                             //           width: 10.w,
//                             //         ),
//                             //         FaIcon(
//                             //           FontAwesomeIcons.fileInvoice,
//                             //           size: 17.sp,
//                             //           color: AppColor.hintColor,
//                             //         ),
//                             //         SizedBox(
//                             //           width: 6.w,
//                             //         ),
//                             //         // Text(box.read('NoteController'))
//                             //       ],
//                             //     ),
//                             //
//                             //
//                             //   ),
//                             // ),
//
//                             Container(
//                               height: 400,
//                               child: ListView.builder(
//                                 scrollDirection: Axis.vertical,
//                                 itemCount: 5,
//                                 itemBuilder: (context, index) =>Card(
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: ListTile(
//                                     title: Row(
//                                       children: [
//                                         Text(box.read('InTime').toString()),
//                                         Text(' - '),
//                                         Text(box.read('OutTime').toString()),
//                                         SizedBox(
//                                           height: 5.h,
//                                         ),
//                                       ],
//                                     ),
//                                     trailing: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: AppColor.primaryColor,
//                                     ),
//                                     subtitle: Row(
//                                       children: [
//                                         Icon(
//                                           Icons.access_time,
//                                           color: AppColor.hintColor,
//                                         ),
//                                         SizedBox(
//                                           width: 6.w,
//                                         ),
//                                         Text(box.read('TotalHour').toString()),
//                                         Text(box.read('TotalMinute').toString()),
//                                         SizedBox(
//                                           width: 10.w,
//                                         ),
//                                         FaIcon(
//                                           FontAwesomeIcons.fileInvoice,
//                                           size: 17.sp,
//                                           color: AppColor.hintColor,
//                                         ),
//                                         SizedBox(
//                                           width: 6.w,
//                                         ),
//                                         // Text(box.read('NoteController'))
//                                       ],
//                                     ),
//
//
//                                   ),
//                                 ) ,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:time_maintain/helper/route_helper.dart';
import 'package:time_maintain/model/DataList.dart';
import 'package:time_maintain/util/app_color.dart';
import 'package:time_maintain/util/image.dart';
import 'package:time_maintain/view/base/custom_buttom.dart';
import 'package:time_maintain/view/screen/bottom_sheet_view.dart';
import 'package:time_maintain/view/screen/map_screen.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  final box = GetStorage();
  var day = DateFormat.MMMMEEEEd().format(DateTime.now());

  int i = 0;
  @override
  void initState() {
    GetStorage();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: AppColor.cardColor,
          elevation: 0,
          leadingWidth: 300,
          toolbarHeight: 70,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Image.asset(Images.logo, fit: BoxFit.cover),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.bell,
                color: AppColor.primaryColor,
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 8,bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi, Steave',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30,
                                        color: AppColor.cardColor,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    "${day}",
                                    style: TextStyle(
                                        color: AppColor.cardColor,
                                        fontSize: 17,
                                        letterSpacing: 0.1),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.cardColor,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      side: BorderSide.none),
                                  onPressed: () {},
                                  child: Text(
                                    'Regular',
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        SizedBox(
                          width: 120.w,
                          child: CircleProgressBar(
                            foregroundColor: AppColor.primaryColor,
                            backgroundColor: Colors.lightBlueAccent,
                            value: 0.2,
                            strokeWidth: 10,
                            reversedDirection: false,
                            child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          box.read('TotalHour').toString(),
                                          style: TextStyle(
                                              color: AppColor.cardColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          box.read('TotalMinute').toString(),
                                          style: TextStyle(
                                              color: AppColor.cardColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Worked',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.cardColor,
                                          fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 7.0),
                                          child: Text(
                                            'In',
                                            style: TextStyle(
                                                color: AppColor.cardColor
                                                    .withOpacity(0.8),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Text(
                                          box.read('InTime').toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.sp,
                                            color: AppColor.cardColor
                                                .withOpacity(0.8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12),
                                  child: Container(
                                    width: 1.w,
                                    height: 30.h,
                                    color: AppColor.cardColor,
                                  ),
                                ),
                                Card(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 7.0),
                                          child: Text(
                                            'Out',
                                            style: TextStyle(
                                                color: AppColor.cardColor
                                                    .withOpacity(0.8),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Text(
                                          box.read('OutTime').toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.sp,
                                            color: AppColor.cardColor
                                                .withOpacity(0.8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12),
                                  child: Container(
                                    width: 1.w,
                                    height: 30.h,
                                    color: AppColor.cardColor,
                                  ),
                                ),
                                Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Balance',
                                          style: TextStyle(
                                              color: AppColor.cardColor
                                                  .withOpacity(0.8),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              box.read('TotalHour').toString(),
                                              style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.cardColor
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1.0, right: 2),
                                              child: Text(
                                                ':',
                                                style: TextStyle(
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.cardColor
                                                      .withOpacity(0.8),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              box
                                                  .read('TotalMinute')
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.cardColor
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 2.h,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height:10.h,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                context: context,
                                builder: (_) => Container(





                                  child: bottomSheet(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  border: Border.all(
                                      width: 1, color: AppColor.cardColor),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        color: AppColor.cardColor,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Punch In',
                                        style: TextStyle(
                                            color: AppColor.cardColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Center(
                          child: DotsIndicator(
                            dotsCount: 2,
                            decorator: DotsDecorator(
                              size: const Size.square(9.0),
                              activeColor: AppColor.cardColor,
                              // activeSize: const Size(15.0, 15.0),

                              color: AppColor.cardColor,
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.6)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        InkWell(
                          onTap: (){
                            Get.toNamed(view);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Attendance Logs',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.cardColor),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.cardColor,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 19.0,top: 12),
                child: Text(
                  "Today's Logs",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColor.disabledColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 18.0, top: 5, right: 10),
                      child: Container(
                        
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) =>InkWell(
                            onTap: (){
                              // print(data.last);

                              Get.toNamed(view);
                            },
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Text(box.read('InTime').toString()),
                                    Text(' - '),
                                    Text(box.read('OutTime').toString()),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.primaryColor,
                                ),
                                subtitle: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: AppColor.hintColor,
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Text(box.read('TotalHour').toString()),
                                    Text(box.read('TotalMinute').toString()),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.fileInvoice,
                                      size: 17.sp,
                                      color: AppColor.hintColor,
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    // Text(box.read('NoteController'))
                                  ],
                                ),


                              ),
                            ),
                          ) ,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
