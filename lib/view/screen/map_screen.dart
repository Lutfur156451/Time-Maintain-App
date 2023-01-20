// import 'package:flutter/material.dart';
// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
//
//
//
// class mapScreen2 extends StatefulWidget {
//   const mapScreen2({Key? key}) : super(key: key);
//
//   @override
//   State<mapScreen2> createState() => _mapScreenState();
// }
//
// class _mapScreenState extends State<mapScreen2> {
//
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//       body: Container(
//         child: OpenStreetMapSearchAndPick(
//             center: LatLong(23.75222058881423, 89.37464023872025),  //-33.870840, 151.206286
//             buttonColor: Colors.blue,
//             buttonText: 'Set Current Location',
//             onPicked: (pickedData) {
//             }
//
//
//
//             ),
//       ),
//
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:time_maintain/util/app_color.dart';
import 'package:time_maintain/view/screen/map_screen.dart';
import 'package:time_maintain/view/screen/view_map_screen.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<mapScreen> {
  Completer<GoogleMapController> _controller = Completer();
// on below line we have specified camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(23.81241353602155, 90.40065689806039),
    zoom: 15.4746,
  );

  final List<Marker> _markers = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(23.81241353602155, 90.40065689806039),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // on below line creating google maps
        child: Stack(
          alignment: Alignment.center,
          children: [
            GoogleMap(
              initialCameraPosition: _kGoogle,
              markers: Set<Marker>.of(_markers),
              mapType: MapType.normal,
              myLocationEnabled: true,
              compassEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                print(_markers.reversed.last.position.longitude);
              },
            ),
            Positioned(
                left: 5,
                top: 5,
                child: CircleAvatar(
                  backgroundColor: AppColor.cardColor.withOpacity(0.8),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => viewMapScreen(),
                          ));
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.square,
                      size: 16,
                      color: AppColor.secondaryHeaderColor.withOpacity(0.9),
                    ),
                  ),
                )),




            //
            //
            //  SizedBox(height: 20,),
            //  ElevatedButton(onPressed: (){
            // print(  getUserCurrentLocation().toString());
            //  }, child: Text('click'))
          ],
        ),
      ),
    );
  }
}
