//import 'package:fininfocom_1/Screens/dogimage.dart';

import 'package:fininfocom_1/Screens/Profile.dart';

import 'exports.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: Fhome,
        transition: Transition.leftToRight,
        page: () => const home()),
    GetPage(
        name: dogImage,
        transition: Transition.leftToRight,
        page: () => const Dog1()),
    GetPage(
        name: Profile_screen,
        transition: Transition.leftToRight,
        page: () => profile())
  ];
}
