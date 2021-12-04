import 'package:flutter/material.dart';
import 'package:redline/pages/home/view/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // leading is the right side of the title
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),

          // title is in between leading and actions
          title: const Text(
            'RedLine',
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
      
      body: Center(
        child: ChatPage(),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: const Icon(
          Icons.message,
          color: Colors.deepPurple,
        ),
        onPressed: () => {},
        elevation: 0.5,
      ),
    );
  }
}
