import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  final String documentID;

  Comment(this.documentID, {Key key}) : super(key: key);
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final _formKey2 = GlobalKey<FormState>();

  TextEditingController _commentContentController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _commentContentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _createcomment(),
    );
  }

  Widget _createcomment() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Scaffold(
        backgroundColor: Colors.white, //Color(0xFFcccccc),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    '30K',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1 / 3,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        size: 25,
                      ),
                      color: Colors.black54,
                      onPressed: () {}),
                ],
              )),
        ),
        body: FutureBuilder(
            future: Firestore.instance
                .collection('pages')
                .document(widget.documentID)
                .collection('post')
                .document(widget.documentID)
                .collection('comment')
                .getDocuments(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError)
                return new Text('Error: ${snapshot.error}');
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return new Text('Loading...');
                default:
                  return Column(
                    children: <Widget>[
                      Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data.documents.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: FlatButton(
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                'images/profile_page.jpg'),
                                            radius: 20,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Expanded(
                                        child: Card(
                                          color: Colors.grey.shade100,
                                          margin: EdgeInsets.all(5),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              FlatButton(
                                                child: Text(
                                                  snapshot.data.documents[index]
                                                      ['username'],
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2,
                                                    color: Colors.grey.shade900,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                              Text(
                                                snapshot.data.documents[index]
                                                    ['comment_content'],
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2,
                                                  color: Colors.grey.shade700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  FlatButton(
                                    child: Text(
                                      'Like',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        height: 1.2,
                                        color: Colors.purple.shade500,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            );
                          },
                          //  itemCount: 20,
                        ),
                      ),
                      Divider(height: 2.0),
                      Form(
                        key: _formKey2,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: (MediaQuery.of(context).size.width *
                                        1 /
                                        26)),
                                child: TextFormField(
                                  controller: _commentContentController,
                                  decoration: InputDecoration.collapsed(
                                    hintText: "Type a message",
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'message is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: Icon(
                                Icons.send,
                                color: Colors.deepPurple,
                              ),
                              disabledColor: Colors.grey,
                              onPressed: () async {
                                if (_formKey2.currentState.validate()) {
                                  Firestore.instance
                                      .collection('pages')
                                      .document(widget.documentID)
                                      .collection('post')
                                      .document(widget.documentID)
                                      .collection('comment')
                                      .document()
                                      .setData({
                                    'comment_content':
                                        _commentContentController.text,
                                    'userid': "5arJBmgyMNlJgLKyvldS",
                                    'username': 'amal',
                                    'timetamp': FieldValue.serverTimestamp(),
                                  });
                                  Firestore.instance
                                      .collection('ActivtyLog')
                                      .document('ParentId')
                                      .collection('ActivtyLogitem')
                                      .document()
                                      .setData({
                                    'comment_content':
                                        _commentContentController.text,
                                    'userid': "5arJBmgyMNlJgLKyvldS",
                                    'username': 'amal',
                                    'type': 'comment',
                                    'timetamp': FieldValue.serverTimestamp(),
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
              }
            }),
      ),
    );
  }
}
