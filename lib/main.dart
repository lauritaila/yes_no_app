import 'package:flutter/material.dart';
import 'package:yes_no_maybe_chat_provider/config/theme/app_theme.dart';
import 'package:yes_no_maybe_chat_provider/presentation/screens/chat/chat_screen.dart';
import 'package:yes_no_maybe_chat_provider/presentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ]
      child:MaterialApp(
        title: 'Yes No Maybe App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 0).theme(),
        home: const ChatScreen()
      )
    )
  }
}
