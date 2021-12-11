import 'package:flutter/material.dart';
import 'package:redline/pages/home/model/chat_model.dart';
import 'package:redline/pages/home/model/conversation_model.dart';

class ConversationSubPage extends StatefulWidget {
  const ConversationSubPage({Key? key}) : super(key: key);

  @override
  ConversationSubPageState createState() {
    return ConversationSubPageState();
  }
}

class ConversationSubPageState extends State<ConversationSubPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyChat.chat.length,
        itemBuilder: (context, i) => Column(
              children: [
                ChatBubble(
                  text: dummyChat.chat[i].message,
                  isCurrentUser: false,
                  time: dummyChat.chat[i].time,
                ),
              ],
            ));
  }
}
