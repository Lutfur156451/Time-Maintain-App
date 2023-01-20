// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:time_maintain/view/screen/map2.dart';
//
// class MyBottomSheet extends StatefulWidget {
//   @override
//   _MyBottomSheetState createState() => _MyBottomSheetState();
// }
//
// class _MyBottomSheetState extends State<MyBottomSheet> {
//   bool _flag = false;
//
//
//
//   TimeOfDay _timeOfDay = TimeOfDay.now();
//   void _showtimepikar() {
//   showTimePicker(context: context, initialTime: TimeOfDay.now())
//       .then((value) {
//   setState(() {
//   _timeOfDay = value!;
//   });
//   });
//   }
//
//   var test = DateTime.now();
//   TimeOfDay _timeOfDay2 = TimeOfDay.now();
//
//   void _showtimepikar2() {
//   showTimePicker(context: context, initialTime: TimeOfDay.now())
//       .then((value) {
//   setState(() {
//   _timeOfDay2 = value!;
//   });
//   });
//   }
//
//   int i = 0;
//   @override
//   void initState() {
//   _showtimepikar();
//   _showtimepikar2();
//   super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // FlutterLogo(
//         //   size: 300,
//         //   style: FlutterLogoStyle.stacked,
//         //   textColor: _flag ? Colors.black : Colors.red,
//         // ),
//         // ElevatedButton(
//         //   onPressed: () => setState(() => _flag = !_flag),
//         //   child: Text('Change Color'),
//         // )
//
//
//         Center(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               mainAxisAlignment:
//               MainAxisAlignment.center,
//               children: [
//                 Card(
//                   elevation: 0,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         right: 8.0),
//                     child: Column(
//                       crossAxisAlignment:
//                       CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding:
//                           const EdgeInsets.only(
//                               left: 7.0),
//                           child: Material(
//                               child: Text(
//                                 'In',
//                                 style: TextStyle(
//                                     color: Colors.black
//                                         .withOpacity(0.9),
//                                     fontSize: 14,
//                                     fontWeight:
//                                     FontWeight.w500),
//                               )),
//                         ),
//                         SizedBox(
//                           height: 2,
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _showtimepikar();
//                           },
//                           child: Material(
//                               child: Text(
//                                 _timeOfDay
//                                     .format(context)
//                                     .toString(),
//                                 style: TextStyle(
//                                     fontWeight:
//                                     FontWeight.bold,
//                                     fontSize: 17,
//                                     color: Colors.green),
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(child: SizedBox()),
//                 Card(
//                   elevation: 0,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         right: 8.0),
//                     child: Column(
//                       crossAxisAlignment:
//                       CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding:
//                           const EdgeInsets.only(
//                               left: 7.0),
//                           child: Material(
//                               child: Text(
//                                 'Out',
//                                 style: TextStyle(
//                                     color: Colors.black
//                                         .withOpacity(0.9),
//                                     fontSize: 14,
//                                     fontWeight:
//                                     FontWeight.w500),
//                               )),
//                         ),
//                         SizedBox(
//                           height: 2,
//                         ),
//                         Material(
//                           child: TextButton(
//                             onPressed: () {
//                               setState(() {
//                                 _showtimepikar2();
//                               });
//                             },
//                             child: Material(
//                                 child: Text(
//                                   _timeOfDay2
//                                       .format(context)
//                                       .toString(),
//                                   style: TextStyle(
//                                       fontWeight:
//                                       FontWeight.bold,
//                                       fontSize: 17,
//                                       color: Colors.red),
//                                 )),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Card(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.only(right: 8.0),
//                 //     child: Row(
//                 //       children: [
//                 //         TextButton(
//                 //           onPressed: () {
//                 //             _showtimepikar2();
//                 //           },
//                 //           child: Text(_timeOfDay2.format(context).toString()),
//                 //         ), Text('Out')
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ),
//
//                 Expanded(child: SizedBox()),
//                 Card(
//                   elevation: 0,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 5.0),
//                     child: Column(
//                       crossAxisAlignment:
//                       CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Total',
//                           style: TextStyle(
//                               color: Colors.black
//                                   .withOpacity(0.9),
//                               fontSize: 14,
//                               fontWeight:
//                               FontWeight.w500),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               '${_timeOfDay.hour - _timeOfDay2.hour} h : ',
//                               style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight:
//                                   FontWeight.bold,
//                                   color: Colors.blue),
//                             ),
//                             Text(
//                               '${_timeOfDay.minute + _timeOfDay2.minute} min',
//                               style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight:
//                                   FontWeight.bold,
//                                   color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//               left: 20.0, right: 20),
//           child: Column(
//             crossAxisAlignment:
//             CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Note (Optional)',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey,
//                     fontSize: 15),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius:
//                         BorderRadius.circular(8),
//                         borderSide: BorderSide.none),
//                     filled: true,
//                     hintText: 'Add Note Here',
//                     contentPadding: EdgeInsets.only(
//                         top: 0,
//                         bottom: 70,
//                         left: 10,
//                         right: 10)),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 50,
//         ),
//
//
//         Container(width: 300,height: 100,color: Colors.green,child:mapScrren2() ,),
//
//
//
//
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//             child: Container(
//               width: 360,
//               height: 40,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             mapScrren2(),
//                       ));
//                 },
//                 child: Text('Map'),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 50,
//         ),
//
//       ],
//     );
//   }
// }

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_location_picker/export.dart';
import 'package:geolocator/geolocator.dart';
import 'package:time_maintain/util/app_color.dart';
import 'package:time_maintain/view/base/custom_buttom.dart';
import 'package:time_maintain/view/screen/main_screen.dart';
import 'package:time_maintain/view/screen/map_screen.dart';
import 'package:time_maintain/view/screen/nav_bar.dart';
import 'package:time_maintain/view/screen/time_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:geocoding/geocoding.dart';

class bottomSheet extends StatefulWidget {
  @override
  _bottomSheetState createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  TextEditingController _noteController = TextEditingController();

  TimeOfDay _timeOfDay = TimeOfDay.now();
  void _showtimepikar() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  var test = DateTime.now();
  TimeOfDay _timeOfDay2 = TimeOfDay.now();

  void _showtimepikar2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    });
  }

  int i = 0;
  @override
  void initState() {
    _showtimepikar();
    _showtimepikar2();
    catchIpAddress();
    getLatLong();

    super.initState();
  }

  String IPadress = 'Loading..';

  catchIpAddress() async {
    final ipv4 = await Ipify.ipv4();
    setState(() {
      IPadress = ipv4;
    });
  }

  DateTimePass() {
    timeScreen(
      _timeOfDay2,
      _timeOfDay2,
    );
  }

  double? lat;
  double? long;
  String address = "";

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getLatLong() {
    Future<Position> data = _determinePosition();
    data.then((value) {
      print("value $value");
      setState(() {
        lat = value.latitude;
        long = value.longitude;
      });

      getAddress(value.latitude, value.longitude);
    }).catchError((error) {
      print("Error $error");
    });
  }

  getAddress(lat, long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    setState(() {
      address = placemarks[4].street! +
          ", " +
          placemarks[0].subLocality! +
          ", " +
          placemarks[0].locality!;
    });

    for (int i = 0; i < placemarks.length; i++) {
      print("INDEX $i ${placemarks[i]}");
      print("INDEX $i ${placemarks[i]}");
    }
  }

  final box = GetStorage();








  @override
  Widget build(BuildContext context) {
    return Container(
       height: 1000,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                )),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: Material(
                                      child: Text(
                                    'In',
                                    style: TextStyle(
                                        color: AppColor.secondaryHeaderColor
                                            .withOpacity(0.8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                TextButton(
                                  onPressed: () {
                                    _showtimepikar();
                                  },
                                  child: Material(
                                      child: Text(
                                    _timeOfDay.format(context).toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: AppColor.secondaryHeaderColor
                                          .withOpacity(0.8),
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12),
                          child: Container(
                            width: 1,
                            height: 25,
                            color: Colors.grey,
                          ),
                        ),
                        Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: Material(
                                      child: Text(
                                    'Out',
                                    style: TextStyle(
                                        color: AppColor.secondaryHeaderColor
                                            .withOpacity(0.8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Material(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _showtimepikar2();
                                      });
                                    },
                                    child: Material(
                                        child: Text(
                                      _timeOfDay2.format(context).toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: AppColor.secondaryHeaderColor
                                            .withOpacity(0.8),
                                      ),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12),
                          child: Container(
                            width: 1,
                            height: 25,
                            color: Colors.grey,
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      color: AppColor.secondaryHeaderColor
                                          .withOpacity(0.8),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${_timeOfDay.hour - _timeOfDay2.hour} h : ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.secondaryHeaderColor
                                            .withOpacity(0.8),
                                      ),
                                    ),
                                    Text(
                                      '${_timeOfDay.minute + _timeOfDay2.minute} min',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.secondaryHeaderColor
                                            .withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Note ( Optional )',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: _noteController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: AppColor.hintColor),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Add note here',
                            hintStyle: TextStyle(color: AppColor.hintColor),
                            contentPadding: EdgeInsets.only(
                                top: 0, bottom: 70, left: 10, right: 10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.primaryColor,
                    ),
                    child: mapScreen(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 20),
                  child: Row(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.blue.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.my_location,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$address",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.secondaryHeaderColor
                                  .withOpacity(0.8),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'My Location',
                            style: TextStyle(
                                color: AppColor.disabledColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.blue.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            IPadress,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.secondaryHeaderColor
                                  .withOpacity(0.8),
                            ),
                          ),
                          Text(
                            'IP Address',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 20, top: 40),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 18,
                              child: OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    side: BorderSide(
                                        width: 1, color: Colors.grey)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: AppColor.disabledColor,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child: customBottom('Punch In', () {
                            box.write('InTime', _timeOfDay.format(context));
                            box.write('OutTime', _timeOfDay2.format(context));
                            box.write(
                              'TotalHour',
                              '${_timeOfDay.hour - _timeOfDay2.hour} h ',
                            );
                            box.write(
                              'TotalMinute',
                              '${_timeOfDay.minute - _timeOfDay2.minute} m ',
                            );
                            box.write('NoteController', _noteController.text);
                            // final _note=_noteController.text;

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => bottomNavbar(),
                                ));
                          })),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );


  }


}

