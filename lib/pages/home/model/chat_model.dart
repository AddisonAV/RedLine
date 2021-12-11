import 'dart:core';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Oberlan",
      message:
          "Rapaz, vc n sabe o que o joao paulo aprontou dessa vez, já tem 5 dias que pedi pra ele fazer a atividade e ele n entregou ate agr",
      time: "14:23",
      avatarUrl: "https://i.imgur.com/TgrTUZy.jpg"),
  ChatModel(
      name: "Oberlan",
      message:
          "Cara, outro, o Warlei fica insistindo em receber por duas monitorias e eu cansei de falar que n vou dar pra ele.",
      time: "14:23",
      avatarUrl: "https://i.imgur.com/TgrTUZy.jpg")
];
