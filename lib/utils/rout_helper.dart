import 'package:get/get.dart';
import 'package:getx/screens/firstpage.dart';
import 'package:getx/screens/homepage.dart';

class AppRount {
  static List<GetPage> GetRout = [
    GetPage(name: '/', page: () => const homepage()),
    GetPage(name: '/firstpage', page: () => const firstpage())
  ];
}
