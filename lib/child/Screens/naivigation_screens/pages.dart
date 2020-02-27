import 'package:first_run/page/createpage_screen.dart';
import 'package:first_run/page/page_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'pages ',
          style: TextStyle(
            fontSize: 23,
            color: Colors.purple.shade800,
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              size: 35,
              color: Colors.purple.shade800,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePage()),
              );


            },


          )
        ],
      ),
       body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/wallpaper.jpg'),
    fit: BoxFit.cover,
    )),
    child: Stack(
    children: <Widget>[
    _pages(),
    ],
    ),
    ),
    );
  }
  Widget _pages()
  {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('pages').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return ListView(
              children:
              snapshot.data.documents.map((DocumentSnapshot document) {
                return ListTile(
                  title: Padding(
                    padding: EdgeInsets.all((MediaQuery.of(context).size.width*1/20)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1 / 5,
                      width: MediaQuery.of(context).size.width ,
                      child: Material(
                          elevation: 14,
                          borderRadius: BorderRadius.circular(8.0),
                          shadowColor: Colors.purple,
                          child: Padding(
                            padding:  EdgeInsets.all((MediaQuery.of(context).size.width*1/30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[ FlatButton(
                                child: Text(document['page_name'],
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),),

                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PageScreen(document.documentID)),
                                  );

                                },
                              ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text
                                  (document['page_catogory'],
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 15,
                                  ),
                      )
                              ],


                            ),
                          )),
                    ),
                  ),

                );
              }).toList(),
            );
        }
      },
    );
  }
}

