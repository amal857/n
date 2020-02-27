/*
import 'package:first_run/Screenss/comment_screen.dart';
import 'package:first_run/group/group_tabs/about.dart';
import 'package:first_run/page/createpage_screen.dart';
import 'package:flutter/material.dart';
//import 'package:first_run/Screenss/page_tabs/photo.dart';
//import 'package:first_run/group/page_tabs/about.dart';
//import '../Screens/comment_screen.dart';
//import '../createpage_screen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _commentButtonPressed(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Comment()));
    });
  }

  _allAboutPressed(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
    });
  }

  _createNewPage() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CreatePage()));
    });
  }
  void _commentNew(context)
  {
    showModalBottomSheet(context: context, builder: (BuildContext builder)
    {
      return  Comment();
    } ,isScrollControlled: true,
    );


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      ListView(
        children: <Widget>[
          _photoScroll(),
          _about(),
          _drawLine2(),
          _createPage(),

          _drawLine2(),
          _cardHeader(),
          _cardBody(),
          _drawLine(),
          _cardFooter(),

          _drawLine2(),

          _cardHeader(),
          _cardBody(),
          _drawLine(),
          _cardFooter(),

        ],
      ),

    );
  }

  Widget _photoScroll(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),


      height: 150,

      child: ListView(
        scrollDirection:Axis.horizontal ,
        children: <Widget>[


          Container(
            child: Image(image: AssetImage('images/0.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),

          ),
          Container(

            child: Image(image: AssetImage('images/11.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),

          ),
          Container(
            child: Image(image: AssetImage('images/22.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),

          ),
          Container(
            child: Image(image: AssetImage('images/33.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),
          ),
          Container(
            child: Card(
              child: Image(image: AssetImage('images/4.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),
            ),
          ),
          Container(

            child: Image(image: AssetImage('images/5.jpg'),width: MediaQuery.of(context).size.width*1/3,height: 120,fit: BoxFit.fill,),
          ),

        ],
      ),
    );
  }
  Widget _about() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,

          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.call,
                          size: 25,
                        ),
                        color: Colors.grey.shade800,
                        onPressed: () {}),
                    Text('0123457890',
                        style:
                        TextStyle(fontSize: 17, color: Color(0xFF9656A1))),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.email,
                          size: 25,
                        ),
                        color: Colors.grey.shade800,
                        onPressed: () {}),
                    Text('mbc3.gmail.com',
                        style:
                        TextStyle(fontSize: 17, color: Color(0xFF9656A1))),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.language,
                          size: 20,
                        ),
                        color: Colors.grey.shade800,
                        onPressed: () {}),
                    Text('https://mbc3.com',
                        style:
                        TextStyle(fontSize: 17, color: Color(0xFF9656A1))),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.offline_bolt,
                          size: 25,
                        ),
                        color: Colors.grey.shade800,
                        onPressed: () {}),
                    Text('Send Message',
                        style:
                        TextStyle(fontSize: 17, color: Color(0xFF9656A1))),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.subscriptions,
                          size: 25,
                        ),
                        color: Colors.grey.shade800,
                        onPressed: () {}),
                    Text('https://youtube.com/mbc3tv',
                        style:
                        TextStyle(fontSize: 17, color: Color(0xFF9656A1))),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            color: Colors.white,
            child: FlatButton(
                onPressed: () =>_allAboutPressed(),
                child: Row(
                  children: <Widget>[
                    Text('See ALL',style:TextStyle(color: Colors.grey.shade400,) ,textAlign: TextAlign.center,),
                    Icon(Icons.chevron_right)
                  ],
                )),
          ),
        ],
      ),
    );
  }
  Widget _drawLine2() {
    return Container(
      height: 5,
      color: Colors.grey.shade400,
    );
  }
  Widget _createPage(){
    return Container(
      color:Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[

          Text('Create your own Page ',style: TextStyle(fontSize: 18)),
          SizedBox(height: 2,),
          RaisedButton(onPressed: ()=>_createNewPage(), child:Text('Create Page',style: TextStyle(color: Color(0xFF9656A1)),),)
        ],
      ),

    );
  }
  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('images/profile_page.jpg'),
            radius: 25,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'MBC3',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*1/7,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '27 Nov 2019 at 14:30 PM . ',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),

        IconButton(
          onPressed: (){},
          icon: Icon(Icons.more_horiz),
          padding: EdgeInsets.only(left:(MediaQuery.of(context).size.width*1/7),),
        ),


        //  Icons.more_horiz),
        //padding: EdgeInsets.only(left: 70,),



      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 6,
      ),
      child: Column(
        children: <Widget>[
          Text(

            'Welcome to MBC3 page ',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 16, height: 1.2, color: Colors.grey.shade900),
          ),
          Image(
            image: ExactAssetImage('images/post_page.PNG'),
            fit: BoxFit.cover,
          ),
          FlatButton(
            child: Row(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(right: (MediaQuery.of(context).size.width*1/7)),
                  child: Text(
                    '30K',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13, height: 1.2, color: Colors.grey.shade800),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: (MediaQuery.of(context).size.width*1/5)),
                  child: Text(
                    '3K Comments.',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 13, height: 1.2, color: Colors.grey.shade800),
                  ),
                ),
              ],
            ),
            onPressed: () => _commentNew(context),
          )
        ],
      ),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        /*   mainAxisAlignment: MainAxisAlignment.spaceBetween,*/
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            size: 18,
                          ),
                          color: Colors.grey.shade800,
                          onPressed: () {}),
                      Text('Like',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.mode_comment,
                            size: 18,
                          ),
                          color: Colors.grey.shade800,
                          onPressed: () {}),
                      Text('Comment',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  onPressed: () => _commentNew(context),
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 18,
                          ),
                          color: Colors.grey.shade800,
                          onPressed: () {}),
                      Text('share',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}

 */
