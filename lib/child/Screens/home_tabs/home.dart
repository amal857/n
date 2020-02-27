import 'package:flutter/material.dart';

import '../comment_screen.dart';
import '../profile_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void _commentNew(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Comment();
      },
      isScrollControlled: true,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1 / 6,
                              height: MediaQuery.of(context).size.width * 1 / 6,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: ExactAssetImage('images/1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()),
                              );
                            }),
                        Container(
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Wahts in your mind",
                                hintStyle: TextStyle(
                                    color: Colors.teal,
                                    fontFamily: 'DancingScript')),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          padding: EdgeInsets.only(
                            right: (MediaQuery.of(context).size.width * 1 / 7),
                            left: (MediaQuery.of(context).size.width * 1 / 7),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFcccccc),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 10.0,
            child: Divider(
              color: Colors.deepPurple,
            ),
          ),
          _cardHeader(),
          _cardBody(),
          _drawLine(),
          _cardFooter(),
        ],
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 1 / 40),
          child: CircleAvatar(
            // backgroundImage:  NetworkImage('images/1.jpg'),
            backgroundImage: ExactAssetImage('images/1.jpg'),
            radius: 25,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Amal Tarek',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'DancingScript'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 7,
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
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
          padding: EdgeInsets.only(
            left: (MediaQuery.of(context).size.width * 1 / 7),
          ),
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: EdgeInsets.only(
        left: (MediaQuery.of(context).size.width * 1 / 26),
        right: (MediaQuery.of(context).size.width * 1 / 26),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Welcome to Amal page  Welcome to Amal page Welcome to Amal page Welcome to Amal page Welcome to Amal page ',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 16, height: 1.2, color: Colors.grey.shade900),
          ),
          Image(
            image: NetworkImage(
                'https://i.pinimg.com/736x/48/62/a4/4862a4bc411388a0276eee014767c6ea--girly-m-drawing-girls.jpg'),
            fit: BoxFit.cover,
          ),
          FlatButton(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      right: (MediaQuery.of(context).size.width * 1 / 7)),
                  child: Text(
                    '30K',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13, height: 1.2, color: Colors.grey.shade800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width * 1 / 5)),
                  child: Text(
                    '3K Comments',
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
