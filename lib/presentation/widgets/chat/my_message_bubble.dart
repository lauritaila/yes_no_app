import 'package:flutter/material.dart';
import 'package:yes_no_maybe_chat_provider/domain/entities/message.dart';


class MyMessageBubble extends StatelessWidget {
  final Message message; 
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:  [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          )
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Text(Message.text, style: TextStyle(color: Colors.white),
            ),
          )
        ),
        SideBox(height: 10),
      ]
    )
  }
}