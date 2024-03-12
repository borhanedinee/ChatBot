import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/controller/chatcontroller.dart';

import 'onboarding2.dart';

class OnBoardingOne extends StatefulWidget {
    OnBoardingOne({super.key});

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     ChatController chatController = Get.put(ChatController());
  }

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Positioned(
                bottom: size.height * 0.1,
                child: Image.asset(
                  'assets/image/web.png',
                  fit: BoxFit.contain,
                  height: size.height,
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/image/logo.png',
                ),
              ),
              Positioned(
                bottom: size.height * 0.10,
                left: size.width * 0.12,
                child: Column(
                  children: [
                    const Text(
                      'How May I help \nYou today !',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(OnBoardingTwo());
                        },
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 17)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
