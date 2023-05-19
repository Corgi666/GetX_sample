import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get X => _x;
  void incressX() {
    _x++;
    update();
    print(_x);
  }
}

class ListController extends GetxController {
  List _num = [];
  List get num => _num;
  void addList(x) {
    _num.add(x);
    update();
  }
}
