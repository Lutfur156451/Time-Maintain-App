import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:time_maintain/model/DataList.dart';
import 'package:time_maintain/util/app_color.dart';
import 'package:http/http.dart' as http;

class viewDataScreen extends StatefulWidget {
  const viewDataScreen({Key? key}) : super(key: key);

  @override
  State<viewDataScreen> createState() => _viewDataScreenState();
}

class _viewDataScreenState extends State<viewDataScreen> {
  final box = GetStorage();

  bool isloaded = false;
  List<DataList>? userList = [];

  List<DataList> data = [];

  Future<List<DataList>?> getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        print(i['title']);

        userList?.add(DataList.fromJson(i));
      }
    }
  }

  final _currentTime=DateTime.now();

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColor.cardColor,
        elevation: 0,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: AppColor.primaryColor,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColor.cardColor,
                ),
              )),
        ),
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: AppColor.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 9.0, right: 9),
            child: InkWell(
              onTap: () {
                showBottomSheet(
                  backgroundColor:Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                  context: context,
                  builder: (context) => Container(
                    height: 295.h,
                    width: 500.w,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Row(
                            children: [


                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 20,bottom: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Worked',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                                fontSize: 15.sp,
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'In',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            Text(
                                              box.read('InTime').toString(),
                                              style: TextStyle(
                                                  color: AppColor.cardColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      color: Colors.red,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Out',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            Text(
                                              box.read('OutTime').toString(),
                                              style: TextStyle(
                                                  color: AppColor.cardColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Total',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            // Text(
                                            //   box.read('InTime').toString(),
                                            //   style: TextStyle(
                                            //       color: AppColor.cardColor,
                                            //       fontSize: 15.sp,
                                            //       fontWeight: FontWeight.w600),
                                            // ),
                                            Row(
                                              children: [
                                                Text(box.read('TotalHour').toString(),style: TextStyle(
                                                    color: AppColor.cardColor,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600),),
                                                Text(box.read('TotalMinute').toString(),style: TextStyle(
                                                    color: AppColor.cardColor,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600),),
                                              ],
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('ID :',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                                SizedBox(width: 10,),
                                Text(userList!.last.id.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text('User Name :',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                                SizedBox(width: 5,),
                                Text(userList!.last.name.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Email :',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                                SizedBox(width: 5,),
                                Text(userList!.last.email.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Description :',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.cardColor),),
                                    SizedBox(height: 5,),
                                    Text(userList!.last.body.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.hintColor),),
                                  ],
                                ),


                              ],
                            ),
                          ),

                          // Row(
                          //   children: [
                          //     Card(
                          //       elevation: 0,
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8)),
                          //       color: Colors.green,
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             Text(
                          //               'In',
                          //               style: TextStyle(
                          //                 fontWeight: FontWeight.w600,
                          //                 color: Colors.white,
                          //                 fontSize: 15.sp,
                          //               ),
                          //             ),
                          //             Text(
                          //               box.read('InTime').toString(),
                          //               style: TextStyle(
                          //                   color: AppColor.cardColor,
                          //                   fontSize: 15.sp,
                          //                   fontWeight: FontWeight.w600),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //     Card(
                          //       elevation: 0,
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8)),
                          //       color: Colors.red,
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             Text(
                          //               'Out',
                          //               style: TextStyle(
                          //                 fontWeight: FontWeight.w600,
                          //                 color: Colors.white,
                          //                 fontSize: 15.sp,
                          //               ),
                          //             ),
                          //             Text(
                          //               box.read('OutTime').toString(),
                          //               style: TextStyle(
                          //                   color: AppColor.cardColor,
                          //                   fontSize: 15.sp,
                          //                   fontWeight: FontWeight.w600),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //     Card(
                          //       elevation: 0,
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8)),
                          //       color: Colors.blue,
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             Text(
                          //               'Total',
                          //               style: TextStyle(
                          //                 fontWeight: FontWeight.w600,
                          //                 color: Colors.white,
                          //                 fontSize: 15.sp,
                          //               ),
                          //             ),
                          //             // Text(
                          //             //   box.read('InTime').toString(),
                          //             //   style: TextStyle(
                          //             //       color: AppColor.cardColor,
                          //             //       fontSize: 15.sp,
                          //             //       fontWeight: FontWeight.w600),
                          //             // ),
                          //             Row(
                          //               children: [
                          //                 Text(box.read('TotalHour').toString(),style: TextStyle(
                          //                     color: AppColor.cardColor,
                          //                     fontSize: 15.sp,
                          //                     fontWeight: FontWeight.w600),),
                          //                 Text(box.read('TotalMinute').toString(),style: TextStyle(
                          //                     color: AppColor.cardColor,
                          //                     fontSize: 15.sp,
                          //                     fontWeight: FontWeight.w600),),
                          //               ],
                          //             ),
                          //
                          //
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
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
            ),
          ),
        ),
      ),
    );
  }
}
