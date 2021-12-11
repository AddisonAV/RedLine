import 'package:flutter/material.dart';
import 'package:redline/pages/home/model/chat_model.dart';
import 'package:redline/pages/home/model/conversation_model.dart';
import 'package:redline/pages/home/view/conversation_sub_page.dart';

/*class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  ConversationPageState createState() {
    return ConversationPageState();
  }
}

class ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyChat.chat.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.blueGrey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            /*title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyChat.chat[i].user,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  dummyChat.chat[i].time,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                )
              ],
            ),*/
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyChat.chat[i].message,
                //overflow: TextOverflow.ellipsis,  REMOVE THIS COMMENT
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}*/

class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  ConversationPageState createState() {
    return ConversationPageState();
  }
}

class ConversationPageState extends State<ConversationPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading is the right side of the title
          leading: CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.blueGrey,
            backgroundImage: NetworkImage(dummyChat.conversationAvatar),
          ),

          // title is in between leading and actions
          title: const Text(
            'João Paulo',
            textAlign: TextAlign.center,
          ),
          elevation: 0.7,

          // actions, left side of the title
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => {
                    // do action when clicked on the search icon
                  },
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ]

          /* PREVIOUS TAB BAR IMPLEMENTATION, can be used for something else.
            bottom: new TabBar(
                controller: _tabController,
                indicatorColor: Colors.grey,
                tabs: <Widget>[
                    new Tab(icon: Icon(Icons.search)),
                    new Tab(icon: Icon(Icons.camera)),
                    new Tab(text: "CALLS",),
                    new Tab(text: "STATUS",),
                ]
            ),
            */
          // TOP WIDGETS
          ),
      body: const Center(
        child: ConversationSubPage(),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: const Icon(
          Icons.message,
          color: Colors.deepPurple,
        ),
        onPressed: () => {},
        elevation: 0.5,
      ),*/
    );
  }
}
