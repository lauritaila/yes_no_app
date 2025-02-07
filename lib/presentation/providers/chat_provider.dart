import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList = [
    Message(text: 'Hola', fromWho: FromWho.mine),
    Message(text: 'Comiste?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String Text) async {
    //TODO: impelement send message
  }

}