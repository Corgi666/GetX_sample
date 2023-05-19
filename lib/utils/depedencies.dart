import 'package:get/get.dart';
import 'package:getx/controller/api_model.dart';

import '../controller/tap_controller.dart';

void depedencies() async {
  Get.lazyPut(() => AppiController());
  Get.lazyPut(() => TapController());
}
