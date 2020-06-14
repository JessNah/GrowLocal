import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterclient/screens/business_explore_screen.dart';

class BusinessHomeScreen extends StatefulWidget {
  @override
  _BusinessHomeScreenState createState() => _BusinessHomeScreenState();
}

class _BusinessHomeScreenState extends State<BusinessHomeScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    //_tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
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
                  SingleChildScrollView(child: BusinessExploreScreen()),
                  Container(),
/*            Container(),*/
                  Container(),
                ]
            ),
            bottomNavigationBar: new Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[200],
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
                  labelColor: Color(0xff0062ff),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                  unselectedLabelColor: Colors.grey[400],
                  unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.normal
                  ),
                  indicatorColor: Colors.transparent,
                  tabs: <Widget> [
                    Tab(
                      icon: Icon(
                        FontAwesomeIcons.rocket,
                        size: 25,
                      ),
                      text: "TRANSACTIONS",
                    ),
                    Tab(
                      icon: Icon(
                        FontAwesomeIcons.lightbulb,
                        size: 25,
                      ),
                      text: "DEALS",
                    ),
/*              Tab(
                icon: Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
                text: "COLLECTION",
              ),*/
                    Tab(
                      icon: Icon(
                        Icons.person_outline,
                        size: 25,
                      ),
                      text: "SETTINGS",
                    ),
                  ]
              ),
            )
        )
    );
  }
}