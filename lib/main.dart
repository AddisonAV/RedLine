import 'package:flutter/material.dart';
import 'package:redline/pages/home/home.dart';
import 'package:redline/pages/home/view/conversation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RedLine',
      theme: ThemeData(
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.red,
        primarySwatch: Colors.red,
      ),
      home: const ConversationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
