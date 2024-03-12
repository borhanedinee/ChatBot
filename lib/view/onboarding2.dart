import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/view/Auth/login.dart';
import 'package:nidhal/view/Auth/signup.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              bottom: size.height * 0.1,
              child: Container(
                child: Image.asset(
                  'assets/image/web.png',
                  fit: BoxFit.contain,
                  height: size.height,
                ),
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
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Login());
                      },
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 17)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.yellow),
                      ),
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Signup());
                      },
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 17)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}
