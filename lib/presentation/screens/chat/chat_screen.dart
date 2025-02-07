import 'package:flutter/material.dart';
import 'package:yes_no_maybe_chat_provider/presentation/providers/chat_provider.dart';
import 'package:yes_no_maybe_chat_provider/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_maybe_chat_provider/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_maybe_chat_provider/presentation/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_maybe_chat_provider/presentation/providers/chat_provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://content.api.news/v3/images/bin/7743441241ec8c4b88072b88a2a4c4c4?width=1440'),
          ),
        ),
        title: const Text('My Love <3'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), 
      child:SafeArea(
        child:Column(
          children: const [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index){ 
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.his) 
                  ? HisMessageBubble() 
                  : MyMessageBubble(message: message);
                },
              )
            ),
            const MessageFieldBox(),
          ]
        )
      )
    );
  }
}