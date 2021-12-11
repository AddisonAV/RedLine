import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'dart:ffi';

//import 'package:redline/pages/home/model/chat_model.dart';
//stores some message informations, gonna insert some more later
class Message {
  String message;
  String time;
  String user;

  Message({required this.message, required this.time, required this.user});
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
    required this.time,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,

        child: DecoratedBox(
            //also need to
            // chat bubble decoration
            decoration: BoxDecoration(
              color: isCurrentUser ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: isCurrentUser ? Colors.white : Colors.black87),
                ),
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  time,
                  //overflow: TextOverflow.ellipsis,  REMOVE THIS COMMENT
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
            )
            /*child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),*/
            ),
      ),
    );
  }
}

class ConversationModel {
  //a list to store all messages from the conversation
  List<Message> chat;
  String conversationAvatar;

  ConversationModel(this.conversationAvatar, this.chat);

  void insertMessage(Message newMessage) {
    chat.add(newMessage);
  }

  //could implement the delete message methot but it sucks
}

Message msg1 = Message(
    message:
        "Mano, to precisando de fazer uma ligação e usar a internet rapidao",
    time: "00:21",
    user: "Joao Paulo");

Message msg2 = Message(
    message:
        "consegue me arrumar 1200 reais pra eu contratar um plano da vivo rapidinho?",
    time: "00:24",
    user: "Joao Paulo");

ConversationModel dummyChat =
    ConversationModel("https://i.imgur.com/Xd10FvS.png", [msg1, msg2]);
