
import 'dart:ui' as prefix1;

import 'package:first_run/parent/shared_ui/navigation_darwer.dart';
import 'package:flutter/material.dart';
import 'package:first_run/parent/notification.dart' as prefix0;
//import 'package:first_run/shared_ui/navigation_darwer.dart';
class PageParent extends StatefulWidget {
  @override
  _PageParentState createState() => _PageParentState();
}

class _PageParentState extends State<PageParent> {
  bool switchval=false;
  void onchanged(bool val){
    setState(() {
      switchval=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My Children ',style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          fontSize:20.0,
          fontStyle:FontStyle.italic
        ),),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_alert),onPressed: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>prefix0.Notification()),
            );
          },)
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: <Widget>[
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(100.0),
                                  image: DecorationImage(
                                    image: ExactAssetImage('images/8.jpg'),
                                    fit: BoxFit.cover,
                                  ))),
                          Row(
                            children: <Widget>[
                              Text(
                                "Salma Mostafa",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize:15.0,
                                  fontFamily: 'DancingScript',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(icon: Icon(Icons.delete_forever,),onPressed: (){},),
                      Switch(value:switchval,onChanged: onchanged,activeColor:Colors.blue ,)
                    ],
                  )
              ),
            );
          },
      ),
    );
  }
}




