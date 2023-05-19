import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/screens/homepage.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController gaipu = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                  child: GestureDetector(
                      onTap: () {
                        Get.to(() => homepage());
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                )
              ],
            ),
            SizedBox(
              height: 322,
            ),
            GetBuilder<TapController>(builder: ((controller) {
              return Center(
                child: Container(
                  child: Text(controller.X.toString()),
                ),
              );
            })),
            Container(
              child: Text(gaipu.X.toString()),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  gaipu.incressX();
                },
              child: Icon(Icons.add),),
            )
          ],
        ),
      ),
    );
  }
}
