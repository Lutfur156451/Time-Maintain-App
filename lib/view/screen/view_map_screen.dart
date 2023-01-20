// import 'dart:async';
//
// import 'package:flutter_google_location_picker/export.dart';
// import 'package:flutter_google_location_picker/flutter_google_location_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class mapScreen extends StatefulWidget {
//   const mapScreen({Key? key}) : super(key: key);
//
//   @override
//   State<mapScreen> createState() => _mapScreenState();
// }
//
// class _mapScreenState extends State<mapScreen> {
//   final Completer<GoogleMapController> _controller = Completer();
//   late GoogleMapController googleMapController;
//
//   static const CameraPosition _kGooglePlex =
//       CameraPosition(target: LatLng(23.81241353602155, 90.40065689806039), zoom: 10,);
//
//
//   final List<Marker>_markers=[];
//
//   final List<Marker> _list = const <Marker>[
//     Marker(
//         markerId: MarkerId('1'),
//         position: LatLng(23.81241353602155, 90.40065689806039),
//         infoWindow: InfoWindow.noText,
//
//
//
//     )
//   ];
// //23.75222058881423, 89.37464023872025
//   //23.81241353602155, 90.40065689806039
//
//   Set<Marker> markers={};
//
//
//
//   @override
//   void initState() {
//     _markers.addAll(_list);
//     super.initState();
//   }
//
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//       //     body: GoogleMap(
//       //   initialCameraPosition:
//       //       CameraPosition(target: LatLng(-33.870840, 151.206286), zoom: 12),
//       // )
//
//           body:GoogleMap(
//
//             initialCameraPosition:_kGooglePlex,
//             markers: Set<Marker>.of(_markers),
//             onMapCreated: (GoogleMapController controller){
//               _controller.complete(controller);
//             },
//             mapToolbarEnabled: true,
//             onTap: (LatLng location){
//
//             },
//             mapType: MapType.normal,
//             myLocationButtonEnabled: true,
//             myLocationEnabled: false,
//             zoomGesturesEnabled: true,
//             padding: const EdgeInsets.all(0),
//             buildingsEnabled: true,
//             cameraTargetBounds: CameraTargetBounds.unbounded,
//             compassEnabled: true,
//             indoorViewEnabled: false,
//             minMaxZoomPreference: MinMaxZoomPreference.unbounded,
//             rotateGesturesEnabled: true,
//             scrollGesturesEnabled: true,
//             tiltGesturesEnabled: true,
//             trafficEnabled: false,
//
//
//           ),
//
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.my_location),
//           onPressed: ()async{
//
//
//
//             GoogleMapController controller= await _controller.future;
//             controller.animateCamera(CameraUpdate.newCameraPosition(
//               CameraPosition(
//                 target: LatLng(23.81241353602155, 90.40065689806039),
//                 zoom: 14
//               )
//             ));
//             setState(() {
//
//             });
//
//             print(_markers);
//             print(_kGooglePlex);
//             print(_list);
//
//
//           },
//         ),
//
//
//
//
//
//
//           // body:GoogleMap(
//           //
//           //   initialCameraPosition:_kGooglePlex,
//           //   markers: markers,
//           //   zoomControlsEnabled: false,
//           //   mapType: MapType.normal,
//           //   myLocationEnabled: true,
//           //   onMapCreated: (GoogleMapController controller){
//           //     googleMapController=controller;
//           //   },
//           // )
//
//           ),
//     );
//   }
// }

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
//


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:time_maintain/util/app_color.dart';

class viewMapScreen extends StatefulWidget {
  const viewMapScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<viewMapScreen> {
  Completer<GoogleMapController> _controller = Completer();
// on below line we have specified camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(23.81241353602155, 90.40065689806039),
    zoom: 14.4746,
  );

// on below line we have created the list of markers
  final List<Marker> _markers = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(23.81241353602155, 90.40065689806039),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),
  ];

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  // getAddressFromLatLng(context, double lat, double lng) async {
  //   String _host = 'https://maps.google.com/maps/api/geocode/json';
  //   final url = '$_host?key=$mapApiKey&language=en&latlng=$lat,$lng';
  //   if(lat != null && lng != null){
  //     var response = await http.get(Uri.parse(url));
  //     if(response.statusCode == 200) {
  //       Map data = jsonDecode(response.body);
  //       String _formattedAddress = data["results"][0]["formatted_address"];
  //       print("response ==== $_formattedAddress");
  //       return _formattedAddress;
  //     } else return null;
  //   } else return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        // on below line creating google maps
        child: Stack(
          alignment: Alignment.center,
          children: [
            GoogleMap(
              // on below line setting camera position
              initialCameraPosition: _kGoogle,
              // on below line we are setting markers on the map
              markers: Set<Marker>.of(_markers),
              // on below line specifying map type.
              mapType: MapType.normal,
              // on below line setting user location enabled.
              myLocationEnabled: true,
              // on below line setting compass enabled.
              compassEnabled: true,
              // on below line specifying controller on map complete.
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),


            Positioned(
              bottom: 0,
              left: 20,
              child: Row(
                children: [
                  Container(
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () async {
                        getUserCurrentLocation().then((value) async {
                          print(value.latitude.toString() +
                              " " +
                              value.longitude.toString());

                          // marker added for current users location
                          _markers.add(Marker(
                            markerId: MarkerId("2"),
                            position: LatLng(value.latitude, value.longitude),
                            infoWindow: InfoWindow(
                              title: 'My Current Location',
                            ),
                          ));

                          print(_markers);

                          // specified current users location
                          CameraPosition cameraPosition = new CameraPosition(
                            target: LatLng(value.latitude, value.longitude),
                            zoom: 16,
                          );

                          final GoogleMapController controller =
                              await _controller.future;
                          controller.animateCamera(
                              CameraUpdate.newCameraPosition(cameraPosition));
                          setState(() {});
                        });
                      },
                      child: Icon(
                        Icons.my_location,
                        color: AppColor.cardColor,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 12,
                      child: Container(
                        width: 260,
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'OK',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
