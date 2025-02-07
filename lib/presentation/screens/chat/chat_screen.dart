import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), 
      child:SafeArea(
        child:Column(
          children: const [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){ 
                  return (index % 2 == 0) ? HisMessageBubble() : MyMessageBubble();
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