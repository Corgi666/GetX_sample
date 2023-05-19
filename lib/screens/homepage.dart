import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/api_model.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/screens/firstpage.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    ListController listController = Get.put(ListController());
    
   // appiController.getImg();
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return GestureDetector(
                onTap: () {
                  controller.incressX();
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0),
                  ),
                  child: Center(
                      child: Text(
                    controller.X.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                Get.to(() => firstpage());
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  'Go To First Page',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(child: GetBuilder<ListController>(builder: (_) {
                  return Text(
                    'List is ' + listController.num.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  );
                })),
              ),
            ),
            GestureDetector(
              onTap: () {
                var x = controller.X;
                listController.addList(x);
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  'Set X To List',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
