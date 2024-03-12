import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nidhal/controller/chatcontroller.dart';
import 'package:nidhal/constants.dart';

class APIServices {
  ChatController chatController = Get.put(ChatController());
  Future<String> chatWithAI(prompt) async {
    chatController.messages.add(
      {
        'role': 'user',
        'content': prompt
      });
    var body = {
      'model': 'gpt-3.5-turbo',
      'messages':chatController.messages
    };
    try {
      var res = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $APIKEY',
        },
        body: jsonEncode(body),
      );

      if (res.statusCode == 200) {
        var jsonResponse = jsonDecode(res.body);
        var AIresponse =
            jsonResponse['choices'][0]['message']['content'].toString();

        return AIresponse;
      } else {
        return '';
      }
    } catch (e) {
      print(e.toString());
      return '';
    }
  }

  static Future<String> generateImage(prompt) async {
    var body = {
      'model': 'dall-e-2',
      'prompt' : prompt,
      'n' : 1
    };
    try {
      var res = await http.post(
        Uri.parse('https://api.openai.com/v1/images/generations'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $APIKEY',
        },
        body: jsonEncode(body),
      );

      print('borhan' + res.body);

      if (res.statusCode == 200) {
        var jsonResponse = jsonDecode(res.body);
        var imageURL =
            jsonResponse['data'][0]['url'];

        return imageURL;
      } else {
        return '';
      }
    } catch (e) {
      print(e.toString());
      return '';
    }
  }
}
