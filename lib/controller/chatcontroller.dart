import 'package:get/get.dart';
import 'package:nidhal/main.dart';
import 'package:nidhal/services/apiservices.dart';

class ChatController extends GetxController {
  List<Map<String , String>> history = [];
  List<Map<String , dynamic>> messages = [];
  String response = '';
  String imageURL = '';
  bool isLoading = false ;

  String lastQstAsked = '';

  addItemToHistory(data){
    history.add(data);
    update();
  }

  // simple chat
  Future<void> chatAI(prompt)async{
    isLoading = true;
    update();
    response = await apiservices.chatWithAI(prompt);
    isLoading = false ;
    update();
  }

  // generating an image
  Future<void> generateImageWithAI(prompt) async {
    isLoading = true;
    update();
    imageURL = await APIServices.generateImage(prompt);
    isLoading = false;
    update();
    print(imageURL);
  }
}