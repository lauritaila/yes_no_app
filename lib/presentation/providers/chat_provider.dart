import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList = [
    Message(text: 'hi love', fromWho: FromWho.mine),
    Message(text: 'Are you at work?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String Text) async {
    final newMessage = Message(text: Text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    notifyListeners();
  }

}