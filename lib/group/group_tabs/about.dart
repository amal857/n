/*
import 'package:first_run/page/page_screen.dart';

import 'package:flutter/material.dart';

import '../group_screen.dart';
//import '../page/page_screen.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  _groupByPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GroupScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color(0xFFcccccc),
      appBar: AppBar(

        backgroundColor: Colors.grey.shade300,
        title: Text('About ',style: TextStyle(fontSize: 23,color: Colors.purple.shade800),),

      ),
      body: ListView(

        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(

              children: <Widget>[
                SizedBox(height: 50,width: MediaQuery.of(context).size.width*1/3,),
                Row(
                  children: <Widget>[
                    FlatButton(onPressed: (){}, child:Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.call,
                              size: 25,
                            ),
                            color: Colors.grey.shade800,
                            onPressed: () {}),
                        Text('0123457890',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF9656A1)
                            )),
                      ],
                    ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(onPressed: (){}, child:Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.email,
                              size: 25,
                            ),
                            color: Colors.grey.shade800,
                            onPressed: () {}),
                        Text('mbc3.gmail.com',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF9656A1)
                            )),
                      ],
                    ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(onPressed: (){}, child:Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.language,
                              size: 20,
                            ),
                            color: Colors.grey.shade800,
                            onPressed: () {}),
                        Text('https://mbc3.com',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF9656A1)
                            )),
                      ],
                    ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(onPressed: (){}, child:Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.offline_bolt,
                              size: 25,
                            ),
                            color: Colors.grey.shade800,
                            onPressed: () {}),
                        Text('Send Message',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF9656A1)
                            )),
                      ],
                    ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(onPressed: (){}, child:Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.subscriptions,
                              size: 25,
                            ),
                            color: Colors.grey.shade800,
                            onPressed: () {}),
                        Text('https://youtube.com/mbc3tv',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF9656A1)
                            )),
                      ],
                    ),
                    )
                  ],
                ),
                SizedBox(
                  child: Container(color: Colors.grey.shade300,),
                  height: 10,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Group By    ',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
                    ),
                    FlatButton(
                      onPressed: () => _groupByPressed(),
                      child: Text(
                        'Mbc3',
                        style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Text(
                      'Members',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        '500K members',
                        style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Text(
                      'Admins',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        '5 admins',
                        style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Container(color: Colors.grey.shade300,),
                  height: 10,

                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.public,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*1/9,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Public',style: TextStyle(color: Colors.grey.shade900,fontSize: 18,),),
                        Text(
                          "Anyone can see who's in this group",style: TextStyle(color: Colors.grey.shade500,fontSize: 14,),),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*1/9,),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('visible',style: TextStyle(color: Colors.grey.shade900,fontSize: 18,),),
                        Text(
                          "Anyone can find  this group ",style: TextStyle(color: Colors.grey.shade500,fontSize: 14,),),
                      ],
                    ),

                  ],
                ),

              ],
            ),
          ),
        ],
      ),



    );
  }
}

*/
