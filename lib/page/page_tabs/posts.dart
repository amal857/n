import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_run/Screenss/comment_screen.dart';
import 'package:flutter/material.dart';

//import '../comment_screen.dart';

class Posts extends StatefulWidget {
  final String documentID;

  Posts(this.documentID, {Key key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  void _commentNew(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Comment(widget.documentID);
      },
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Column(
            children: <Widget>[
              _post()
              //  _cardHeader(),
              //_cardBody(),
              //_drawLine(),
              //_cardFooter(),
            ],
          ),
        );
      },
      // itemCount: 20,
    );
  }

  Widget _post() {
    return FutureBuilder(
        future: Firestore.instance
            .collection('pages')
            .document(widget.documentID)
            .collection('post')
            .getDocuments(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return Container(
                height: MediaQuery.of(context).size.height * 3.5,
                child: ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width *
                                          1 /
                                          26),
                                  child: CircleAvatar(
                                    backgroundImage: ExactAssetImage(
                                        'images/profile_page.jpg'),
                                    radius: 25,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          snapshot.data.documents[index]
                                              ['username'],
                                          style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              7,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      snapshot.data.documents[index]
                                          ['timetamp'],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_horiz),
                                  padding: EdgeInsets.only(
                                    left: (MediaQuery.of(context).size.width *
                                        1 /
                                        7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: (MediaQuery.of(context).size.width *
                                    1 /
                                    40),
                                right: (MediaQuery.of(context).size.width *
                                    1 /
                                    40),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    snapshot.data.documents[index]
                                        ['post_content'],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        height: 1.2,
                                        color: Colors.grey.shade900),
                                  ),
                                  Image(
                                    image: NetworkImage(snapshot
                                        .data.documents[index]['post_image']),
                                    fit: BoxFit.cover,
                                  ),
                                  FlatButton(
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  7)),
                                          child: Text(
                                            '30K',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                height: 1.2,
                                                color: Colors.grey.shade800),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  5)),
                                          child: Text(
                                            '3K Comments.400 Shares',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                                fontSize: 13,
                                                height: 1.2,
                                                color: Colors.grey.shade800),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () => _commentNew(context),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
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
                            ),
                          ),
                          Container(
                            height: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      );
                    }),
              );
          }
        });
  }
}
/*
  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.width*1/26),
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
      ],
    );
  }



  Widget _cardBody() {
    return Padding(
      padding:  EdgeInsets.only(
        left: (MediaQuery.of(context).size.width*1/40),
        right: (MediaQuery.of(context).size.width*1/40),
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

 */

Widget _drawLine() {
  return Container(
    height: 1,
    color: Colors.grey.shade300,
  );
}
