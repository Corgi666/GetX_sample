import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/depedencies.dart';
// import 'package:getx/controller/api_model.dart';
import 'package:getx/screens/api_page.dart';

void main(List<String> args) async {
  depedencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      home: shoppingPage(),
    );
  }
}
