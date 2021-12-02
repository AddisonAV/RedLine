import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
    // for initializin after
    late TabController _tabController;

    @override
    void initState() {
        super.initState();
        _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    }

    @override
    Widget build(BuildContext context) { 
        return Scaffold(
            appBar: AppBar(

            leading: Builder(builder: (BuildContext context){
                return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {Scaffold.of(context).openDrawer();},
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
            },
            ),
           

            title: Text(
                'RedLine',
                textAlign: TextAlign.center,
            ),
            elevation: 0.7,

            actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                            Icons.search,
                            size: 26.0,
                        ),
                    )
                ),
            ]
            

            /* PREVIOUS TAB BAR IMPLEMENTATION
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
            body: new Container(),
        
            floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

            floatingActionButton: new FloatingActionButton(
                backgroundColor: Colors.redAccent,
                child: new Icon(Icons.message, color: Colors.deepPurple,),
                onPressed: () => print("Messages"),
                elevation: 20,
            ),
        );
    }
}