import 'package:flutter/material.dart';
class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),

      body: ListView.builder(
        itemBuilder: (context, position) {
          return
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  Text('Aya Has commented on Post Aya Has commented on Post  Aya Has commented on Post Aya Has commented on Post ')
                ],),
              ),
            );
        },
      ),
    );
  }
}