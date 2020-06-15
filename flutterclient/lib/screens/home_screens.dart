import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterclient/screens/explore_screen.dart';
import 'package:flutterclient/screens/explore_deals_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            SingleChildScrollView(child: ExploreScreen()),
            SingleChildScrollView(child: ExploreDealsScreen()),
            Container(),
          ]
        ),
        bottomNavigationBar: new Container(
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              border: Border.all(
                color: Colors.white70,
                width: 1.0,
              ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.08),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,),
            unselectedLabelColor: Colors.grey[800],
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal
            ),
            indicatorColor: Colors.transparent,
            tabs: <Widget> [
              Tab(
                icon: Icon(FontAwesomeIcons.rocket, size: 25,),
                text: "REWARDS",
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.lightbulb, size: 25,),
                text: "DEALS",
              ),
              Tab(
                icon: Icon(Icons.person_outline, size: 25,),
                text: "SETTINGS",
              ),
            ]
          ),
        )
      )
    );
  }
}