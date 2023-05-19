import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/api_model.dart';

class shoppingPage extends StatelessWidget {
  const shoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppiController controller = Get.put(AppiController());
   
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ShopX',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.grid_view)
                    ],
                  ),
                )
              ],
            ),
          ),GetBuilder<AppiController>(builder: (apicontroller){
            return Container(child: Text(''),);
          })
        ],
      )),
    );
  }
}
