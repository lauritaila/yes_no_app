import 'package:flutter/material.dart';
import 'package:yes_no_maybe_chat_provider/domain/entities/message.dart';


class HisMessageBubble extends StatelessWidget {
  final Message message; 
  const HisMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          )
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Text(message.text, style: TextStyle(color: Colors.white),
            ),
          )
        ),

        SideBox(height: 5),

        _ImageBubble(message.imageUrl!),

        SideBox(height: 10),
      ]
    )
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageURL;

  _ImageBubble(this.imageURL);

  final size = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: Image.network(imageURL, 
        width: size.width * 0.7, 
        height: 200, fit: 
        BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: const Center(child: CircularProgressIndicator(strokeWidth: 2,)),
          );
        }
      ) 
    );
  }

}