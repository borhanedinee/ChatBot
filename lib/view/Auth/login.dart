
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/view/homescreen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}); 

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Stack(
              children: [
                // Background Image (web.png)
                Positioned.fill(
                  child: Image.asset(
                    'assets/image/web.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: size.width,
                    margin: const EdgeInsets.only(
                        bottom: 100), // Adjust margin as needed
                    child: Image.asset('assets/image/logo3.png'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: 0.01,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 200,
                              color: Colors.yellow.withOpacity(0.1))
                        ]),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.4,
                  right: 0,
                  child: Container(
                    height: 0.01,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 300,
                              spreadRadius: 200,
                              color: Colors.yellow.withOpacity(0.1))
                        ]),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.5,
                  left: 0,
                  child: Container(
                    height: 0.01,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 100,
                              spreadRadius: 300,
                              color: Colors.yellow.withOpacity(0.1))
                        ]),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 0.01,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 200,
                              spreadRadius: 300,
                              color: Colors.yellow.withOpacity(0.1))
                        ]),
                  ),
                ),
                // Container with blurred background
                Positioned(
                  top: size.height * 0.3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          height: size.height,
                          width: size.width,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                               FadeInLeft(
                                duration: Duration(milliseconds: 800),
                                 child: Text(
                                  'Welcome Back',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                                               ),
                               ),
                              FadeInLeft(
                                duration: Duration(milliseconds: 800 + 100),
                                child: Text(
                                  'Welcome back we missed you',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Form(
                                  child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Username',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SlideInLeft(
                                      duration: Duration(milliseconds: 800 + 300),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Username',
                                            prefixIcon:  Icon(
                                              Icons.person_outline, color: Colors.grey[400],
                                            ),
                                            fillColor: const Color.fromARGB(
                                                    255, 117, 118, 82)
                                                .withOpacity(0.4),
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Password',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SlideInLeft(
                                      duration: Duration(milliseconds: 800 + 400),
                                      child: TextFormField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          
                                            suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon:  Icon(
                                                  Icons.visibility_outlined , color: Colors.grey[400],),
                                            ),
                                            hintText: 'Password',
                                            prefixIcon:  Icon(
                                              Icons.key, color: Colors.grey[400],
                                            ),
                                            fillColor: const Color.fromARGB(
                                                    255, 117, 118, 82)
                                                .withOpacity(0.4),
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password ?',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SlideInLeft(
                                      duration: Duration(milliseconds: 800 + 600),
                                      child: Center(
                                        child: SizedBox(
                                          width: size.width,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.to(HomeScreen());
                                            },
                                            style: ButtonStyle(
                                              padding:
                                                  const MaterialStatePropertyAll(
                                                      EdgeInsets.symmetric(
                                                          vertical: 17)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20))),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Colors.yellow),
                                            ),
                                            child: const Text(
                                              'LOG IN',
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              ))
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
