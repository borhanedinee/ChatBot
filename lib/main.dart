import 'package:flutter/material.dart';
import 'package:nidhal/controller/chatcontroller.dart';
import 'package:nidhal/services/apiservices.dart';
import 'package:nidhal/view/onboarding1.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}


 late APIServices apiservices ;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () {
        apiservices = APIServices();
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: OnBoardingOne(),
    );
  }
}
