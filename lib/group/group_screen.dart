/*
import 'package:first_run/group/group_tabs/about.dart';
import 'package:first_run/group/group_tabs/photo.dart';
import 'package:flutter/material.dart';

import '../Screenss/comment_screen.dart';
import '../group/group_tabs/file.dart';
import 'creategroup_screen.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  _groupByPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GroupScreen()));
    });
  }

  _photoPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Photos()));
    });
  }

  _aboutPressed() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
    });
  }

  _filePressed() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => File()));
    });
  }

  _commentButtonPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Comment()));
    });
  }

  _createNewGroup() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CreateGroup()));
    });
  }

  void _commentNew(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Comment();
      },
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        title: Container(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.black),
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 1 / 26,
              left: MediaQuery.of(context).size.width * 1 / 26),
          decoration: BoxDecoration(
              color: Color(0xFFcccccc),
              borderRadius: BorderRadius.all(Radius.circular(22.0))),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _coverPage(),
          _profileGroup(),
          _drawLine3(),
          _writePost(),
          _drawLine3(),
          _createPage(),
          _drawLine3(),
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

  Widget _coverPage() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: ExactAssetImage('images/cover_page.jpg'),
      )),
    );
  }

  Widget _profileGroup() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.purple.shade200,
            child: Row(
              children: <Widget>[
                Text(
                  'Group By',
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
                ),
                FlatButton(
                  onPressed: () => _groupByPressed(),
                  child: Text(
                    'Mbc3',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Mbc3',
            style: TextStyle(fontSize: 25, color: Colors.grey.shade900),
          ),
          Text(
            'Private',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {}, //list of members
                child: Text(
                  '500K Members',
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade900),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text(
                        'invite',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade900),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => _photoPressed(),
                child: Text(
                  'Photo',
                  style: TextStyle(color: Color(0xFF9656A1)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1 / 13,
              ),
              RaisedButton(
                onPressed: () => _aboutPressed(),
                child: Text(
                  'About',
                  style: TextStyle(color: Color(0xFF9656A1)),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1 / 13,
              ),
              RaisedButton(
                onPressed: () => _filePressed(),
                child: Text(
                  'Files',
                  style: TextStyle(color: Color(0xFF9656A1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _writePost() {
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: ExactAssetImage('images/profile_page.jpg'),
            radius: 20,
          ),
          Text('Write Some Thing...'),
        ],
      ),
    );
  }

  /*Widget _writePost() {
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/profile_page.jpg'),
            radius: 20,
          ),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Write Some Thing...',
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            padding: EdgeInsets.only(right: 20, left: 15),
            decoration: BoxDecoration(
                color: Color(0xFFcccccc),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
          ),
        ],
      ),
    );
  }*/
  Widget _drawLine3() {
    return Container(
      height: 15,
      color: Colors.grey.shade300,
    );
  }

  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 1 / 26),
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
        left: (MediaQuery.of(context).size.width * 1 / 40),
        right: (MediaQuery.of(context).size.width * 1 / 40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    '3K Comments.400 Shares',
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

  Widget _drawLine2() {
    return Container(
      height: 5,
      color: Colors.grey.shade400,
    );
  }

  Widget _createPage() {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Create your own Group ', style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 2,
          ),
          RaisedButton(
            onPressed: () => _createNewGroup(),
            child: Text(
              'Create Group',
              style: TextStyle(color: Color(0xFF9656A1)),
            ),
          )
        ],
      ),
    );
  }
}
*/
