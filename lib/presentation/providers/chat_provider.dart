import 'package:flutter/material.dart';
import 'package:yes_no_maybe_chat_provider/config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'hi love', fromWho: FromWho.mine),
    Message(text: 'Are you at work?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String Text) async {
    if(text.isEmpty) return;

    final newMessage = Message(text: Text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    if(Text.endsWith('?')) hisReply();

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> hisReply() async {
    final hisMessage = await getYesNoAnswer.getAnswer();

    messageList.add(hisMessage);
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