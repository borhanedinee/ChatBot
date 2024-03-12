import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhal/controller/chatcontroller.dart';
import 'package:nidhal/view/components/suggestionsitem.dart';

class GenerateImage extends StatelessWidget {
  var imageFieldController = TextEditingController();

  GenerateImage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
              width: size.width,
              child: GetBuilder<ChatController>(
                builder: (controller) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.isLoading
                        ? const Column(
                            children: [
                              SizedBox(
                                height: 300,
                              ),
                              CircularProgressIndicator(),
                            ],
                          )
                        : controller.imageURL == ''
                            ? Expanded(
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    const Text(
                                      'Let me help you generate \ncreative images.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 26),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        await controller.generateImageWithAI(
                                            'Generate a digital Illustration of the a purely colourful portrait');
                                        controller.addItemToHistory({
                                          'type': 'image',
                                          'prompt':
                                              'Generate a digital Illustration of the a purely colourful portrait',
                                        });
                                        controller.update();
                                      },
                                      child: const SuggestionsItem(
                                        suggestion:
                                            'Generate a digital Illustration of the a purely colourful portrait',
                                      ),
                                    ),
                                    GestureDetector(
                                       onTap: () async {
                                            await controller
                                                .generateImageWithAI('Generate an image of a cat eating sweats');
                                            controller.addItemToHistory({
                                              'type': 'image',
                                              'prompt':'Generate an image of a cat eating sweats',
                                            });
                                            controller.update();
                                          },
                                      child: const SuggestionsItem(
                                        suggestion:
                                            'Generate an image of a cat eating sweats',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                              )
                            : Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 100,
                                        ),
                                        const Text(
                                          'Generated Image :',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          child: Image.network(
                                              controller.imageURL , ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, left: 10, right: 10),
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey[400]?.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.grey[800]!.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextFormField(
                        controller: imageFieldController,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Describe an image ...',
                            hintStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  await controller.generateImageWithAI(
                                      imageFieldController.text);
                                  controller.addItemToHistory({
                                    'type': 'image',
                                    'prompt': imageFieldController.text
                                  });
                                  controller.update();
                                  imageFieldController.clear();
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
    );
  }
}
