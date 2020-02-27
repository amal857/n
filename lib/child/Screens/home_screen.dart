import 'package:flutter/material.dart';

import 'home_tabs/chat.dart';
import 'home_tabs/home.dart';
import 'home_tabs/list_requests.dart';
import 'home_tabs/notifications.dart';
import 'navigation_darwer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Kids Safety',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: Colors.cyan,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, size: 35),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.cyan,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, size: 35),
                ),
                Tab(
                  icon: Icon(Icons.group, size: 35),
                ),
                Tab(
                  icon: Icon(Icons.chat_bubble, size: 35),
                ),
                Tab(
                  icon: Icon(Icons.notifications, size: 35),
                ),
              ],
            ),
          ),
          drawer: NavigationDrawer(),
          body: TabBarView(
            children: <Widget>[
              Home(),
              ListRequests(),
              Chat(),
              Notifications(),
            ],
          )),
    );
  }
}
