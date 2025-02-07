import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'hi love', fromWho: FromWho.mine),
    Message(text: 'Are you at work?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String Text) async {
    if(text.isEmpty) return;

    final newMessage = Message(text: Text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));
    
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }

}