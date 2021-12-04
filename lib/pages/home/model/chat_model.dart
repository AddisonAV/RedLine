import 'dart:core';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl
  });
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Obiwan",
    message: "Hello young padawan!",
    time: "14:20",
    avatarUrl: "https://i.imgur.com/TgrTUZy.jpg"
  ),
  ChatModel(
      name: "Ken",
      message: "Did u know!",
      time: "14:21",
      avatarUrl: "https://i.imgur.com/TgrTUZy.jpg"
  ),
  ChatModel(
      name: "Nobi",
      message: "This was your father's AK!",
      time: "14:22",
      avatarUrl: "https://i.imgur.com/TgrTUZy.jpg"
  )
];
