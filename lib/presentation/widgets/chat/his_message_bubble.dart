import 'package:flutter/material.dart';


class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),
            ),
          )
        ),

        SideBox(height: 5),

        _ImageBubble(),

        SideBox(height: 10),
      ]
    )
  }
}

class _ImageBubble extends StatelessWidget {

  final size = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: Image.network('https://yesno.wtf', width: size.width * 0.7, height: 200, fit: BoxFit.cover) 
    );
  }

}