import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/controller/chatcontroller.dart';
import 'package:nidhal/view/components/responseitem.dart';
import 'package:nidhal/view/components/suggestionsitem.dart';

class Chat extends StatelessWidget {
  var chatiWithAiController = TextEditingController();

  Chat({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<ChatController>(
          builder: (controller) => Stack(
            children: [
              Image.asset(
                'assets/image/chatweb.png',
                color: Colors.white,
              ),
              Image.asset(
                'assets/image/blur1.png',
                color: Colors.white.withOpacity(0.1),
              ),
              Image.asset('assets/image/blur2.png',
                  color: Colors.white.withOpacity(0.3)),
              SizedBox(
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          controller.isLoading
                              ? const Column(
                                  children: [
                                    SizedBox(
                                      height: 200,
                                    ),
                                    CircularProgressIndicator(),
                                  ],
                                )
                              : controller.response == ''
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: 300,
                                        ),
                                        Text(
                                          'Interacts actively with answers \nin a conversational way.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 26),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            await controller
                                                .chatAI('Tell a joke');
                                            controller.lastQstAsked =
                                                'Tell a joke';
                                            controller.addItemToHistory({
                                              'type': 'chat',
                                              'prompt': 'Tell a joke',
                                            });
                                            controller.update();
                                          },
                                          child: SuggestionsItem(
                                            suggestion: 'Tell a joke',
                                          ),
                                        ),
                                        GestureDetector(
                                           onTap: () async {
                                            await controller
                                                .chatAI('Creative ideas for a 10 year old’s birthday?');
                                            controller.lastQstAsked =
                                               'Creative ideas for a 10 year old’s birthday?';
                                            controller.addItemToHistory({
                                              'type': 'chat',
                                              'prompt': 'Creative ideas for a 10 year old’s birthday?',
                                            });
                                            controller.update();
                                          },
                                          child: SuggestionsItem(
                                            suggestion:
                                                'Creative ideas for a 10 year old’s birthday?',
                                          ),
                                        ),
                                        GestureDetector(
                                           onTap: () async {
                                            await controller
                                                .chatAI('How to master flutter');
                                            controller.lastQstAsked =
                                                'How to master flutter';
                                            controller.addItemToHistory({
                                              'type': 'chat',
                                              'prompt': 'How to master flutter',
                                            });
                                            controller.update();
                                          },
                                          child: SuggestionsItem(
                                            suggestion: 'How to master flutter',
                                          ),
                                        ),
                                      ],
                                    )
                                  : Expanded(
                                      child: SingleChildScrollView(
                                          child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 90,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'You asked : ',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 20),
                                                ),
                                                TextSpan(
                                                  text: controller.lastQstAsked,
                                                  style: TextStyle(
                                                      color: Colors.grey[100],
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ResponseItem(
                                            suggestion: controller.response),
                                      ],
                                    )))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(bottom: 0, left: 10, right: 10),
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey[400]?.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.grey[800]!.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextFormField(
                        controller: chatiWithAiController,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Ask Something ...',
                            hintStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  await controller
                                      .chatAI(chatiWithAiController.text);

                                  controller.addItemToHistory({
                                    'type': 'chat',
                                    'prompt': chatiWithAiController.text,
                                  });
                                  controller.lastQstAsked =
                                      chatiWithAiController.text;
                                  controller.update();
                                  chatiWithAiController.clear();
                                },
                                icon: const Icon(
                                  Icons.send,
                                  color: Color(0xffFFFF3A),
                                )),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFF3A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'ATHENA AI',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
