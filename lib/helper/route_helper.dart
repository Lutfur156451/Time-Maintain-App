

import 'package:get/get.dart';
import 'package:time_maintain/view/screen/main_screen.dart';
import 'package:time_maintain/view/screen/nav_bar.dart';
import 'package:time_maintain/view/screen/splash_screen.dart';
import 'package:time_maintain/view/screen/view_data.dart';

const String splash = '/splash_screen';
const String mainScr = '/mainScr_screen';
const String navbar = '/navbar_screen';
const String welcome = '/welcome_screen';
const String view = '/view_screen';


List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: mainScr, page: () => mainScreen()),
  GetPage(name: navbar, page: () => bottomNavbar()),
  GetPage(name: view, page: () => viewDataScreen()),

];