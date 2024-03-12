import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/controller/chatcontroller.dart';
import 'package:nidhal/view/AIOptions/image.dart';

import 'AIOptions/chat.dart';
import 'components/historyitem.dart';

class HomeScreen extends StatelessWidget {
  final delay = 200;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<ChatController>(
        builder: (controller) => SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Image.asset('assets/image/home.png'),
              Image.asset(
                'assets/image/blur1.png',
                color: const Color(0xffFFFF3A),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //APP BAR
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: BounceInDown(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Hi Borhan' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w900),),
                            SizedBox(width: 15,),
                            CircleAvatar(
                              radius: 15,
                              foregroundImage:
                                  AssetImage('assets/image/profile.png'),
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // welcoming
                     Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: FadeInLeft(
                        child: const Text(
                          'How may I help \nyou today?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // OPTIONS
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          //talk
                          SlideInLeft(
                            duration: Duration(milliseconds: 800 + delay),
                            child: GestureDetector(
                              onTap: () {
                                printInfo(info: 'Talk with bot');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                height: 200,
                                width: size.width * 0.42,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFF3A),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/image/talk.png',
                                          height: 40,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      'Talk \nwith Bot',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              //chat
                              SlideInRight(
                                duration: Duration(milliseconds: 800 + delay),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(Chat());
                                    printInfo(info: 'chat with bot');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    height: 95,
                                    width: size.width * 0.45,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC09FF8),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/image/chat.png',
                                              height: 40,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                              size: 30,
                                            )
                                          ],
                                        ),
                                        const Text(
                                          'Chat with Bot',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              //search by image
                              SlideInRight(
                                duration: Duration(milliseconds: 800 + 2 * delay),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(GenerateImage());
                                    printInfo(info: 'Generate an image');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    height: 95,
                                    width: size.width * 0.45,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFEC4DD),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/image/image.png',
                                              height: 40,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                              size: 30,
                                            )
                                          ],
                                        ),
                                        const Text(
                                          'Generate an image',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //HISTORY
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SlideInLeft(
                        duration: Duration(milliseconds: 800 + 3 * delay),
                        child: const Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    controller.history.isEmpty
                        ?  Expanded(
                            child: Center(
                            child: SlideInRight(
                              duration: Duration(milliseconds: 800 + 4*delay),
                              child: const Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Icon(
                                    Icons.history,
                                    color: Colors.grey,
                                    size: 60,
                                  ),
                                  Text(
                                    'No History',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                        : Expanded(
                            child: SingleChildScrollView(
                            child: Column(
                              children: List.generate(controller.history.length,
                                  (index) {
                                List historyReversed =
                                    controller.history.reversed.toList();
                                var historyItem = historyReversed[index];
                                return SlideInLeft(
                                  duration: Duration(milliseconds: 800 + 4 * delay),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (historyItem['type']! == 'chat') {
                                        Get.to(Chat());
                                        controller.messages.clear();
                                        await controller
                                            .chatAI(historyItem['prompt']);
                                        controller.lastQstAsked =
                                            historyItem['prompt'];
                                        controller.update();
                                      } else {
                                        Get.to(GenerateImage());
                                        await controller.generateImageWithAI(
                                            historyItem['prompt']);
                                  
                                        controller.update();
                                      }
                                    },
                                    child: HistoryItem(
                                        onPressed: () {
                                          controller.history.removeAt(index);
                                          controller.update();
                                        },
                                        historyText: historyItem['prompt']!,
                                        hitoryTypeIcon: historyItem['type']! ==
                                                'chat'
                                            ? 'assets/image/coloredchat.png'
                                            : historyItem['type']! == 'image'
                                                ? 'assets/image/coloredimage.png'
                                                : 'assets/image/coloredtalk.png',
                                        size: size),
                                  ),
                                );
                              }),
                            ),
                          ))
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
