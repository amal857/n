import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:first_run/Screenss/comment_screen.dart';
import 'package:first_run/child/Screens/profile_screen.dart';
import 'package:first_run/page/page_tabs/about.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../createpage_screen.dart';

class Home extends StatefulWidget {
  final String documentID;

  Home(this.documentID, {Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  File _image1;
  TextEditingController _postContentController = TextEditingController();

  Future getImage(File requiredImage) async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      requiredImage = image;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _postContentController.dispose();
  }

  _commentButtonPressed() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Comment((widget.documentID))));
    });
  }

  _allAboutPressed() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
    });
  }

  _createNewPage() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CreatePage()));
    });
  }

  void _commentNew(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Comment((widget.documentID));
      },
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _createPost(),
          _drawLine2(),

          _photoScroll(),
          _about(),
          _drawLine2(),
          _createPage(),
          _drawLine2(),
          _post(),

          // _cardHeader(),
          //_cardBody(),
          //_drawLine(),
          //_cardFooter(),
          //_drawLine2(),
          //_cardHeader(),
          //_cardBody(),
          //_drawLine(),
          //_cardFooter(),
        ],
      ),
    );
  }

  Widget _createPost() {
    return Form(
      key: _formKey,
      child: Row(
        children: <Widget>[
          InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width * 1 / 6,
                height: MediaQuery.of(context).size.width * 1 / 6,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: ExactAssetImage('images/profile_page.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              }),
          SizedBox(width: MediaQuery.of(context).size.width * 2 / 60),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 2 / 5,
                  child: TextFormField(
                    controller: _postContentController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write Post...",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade600,
                        )),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Post is required';
                      }
                      return null;
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 28,
                  ),
                  color: Colors.grey.shade800,
                  onPressed: () async {
                    var image = await ImagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      _image1 = image;
                    });
                  },
                ),
              ],
            ),
          ),
          FlatButton(
            child: Text(
              'Post',
              style: TextStyle(color: Color(0xFF9656A1), fontSize: 18),
            ),
            onPressed: ()
                // async
                async {
              if (_formKey.currentState.validate()) {
                String imageUrl1 = await uploadImage(_image1);
                Firestore.instance
                    .collection('pages')
                    .document(widget.documentID)
                    .collection('post')
                    .document(widget.documentID)
                    .setData({
                  'post_content': _postContentController.text,
                  'post_image': imageUrl1,
                  'userid': "5arJBmgyMNlJgLKyvldS",
                  'username': 'amal',
                  'timetamp': DateTime.now().toString(),
                });
                Firestore.instance
                    .collection('ActivtyLog')
                    .document('ParentId')
                    .collection('ActivtyLogitem')
                    .document()
                    .setData({
                  'post_content': _postContentController.text,
                  'post_image': imageUrl1,
                  'userid': "5arJBmgyMNlJgLKyvldS",
                  'username': 'amal',
                  'type': 'post',
                  'timetamp': DateTime.now().toString(),
                });
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _photoScroll() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('images/0.jpg'),
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('images/11.jpg'),
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('images/22.jpg'),
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('images/33.jpg'),
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Card(
              child: Image(
                image: AssetImage('images/4.jpg'),
                width: MediaQuery.of(context).size.width * 1 / 3,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('images/5.jpg'),
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 120,
              fit: BoxFit.fill,
            ),
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
                onPressed: () => _allAboutPressed(),
                child: Row(
                  children: <Widget>[
                    Text(
                      'See ALL',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                      textAlign: TextAlign.center,
                    ),
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

  Widget _createPage() {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Create your own Page ', style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 2,
          ),
          RaisedButton(
            onPressed: () => _createNewPage(),
            child: Text(
              'Create Page',
              style: TextStyle(color: Color(0xFF9656A1)),
            ),
          )
        ],
      ),
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
                height: MediaQuery.of(context).size.height * 0.3,
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
/*
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

 */
}

Future<String> uploadImage(File image) async {
  String name = Random().nextInt(1000).toString() + '_page';
  final StorageReference storageReference = FirebaseStorage().ref().child(name);
  final StorageUploadTask uploadTask = storageReference.putFile(image);
  StorageTaskSnapshot response = await uploadTask.onComplete;
  String url = await response.ref.getDownloadURL();
  return url;
}
