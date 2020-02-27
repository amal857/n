import 'package:flutter/material.dart';

import 'comment_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      appBar: null,
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 200.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://pic.i7lm.com/wp-content/uploads/2019/07/1440009586_large-screenshot1.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 100.0,
                      child: Container(
                        height: 198.0,
                        width: MediaQuery.of(context).size.width * 1.65 / 3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/736x/48/62/a4/4862a4bc411388a0276eee014767c6ea--girly-m-drawing-girls.jpg'),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width * 1 / 40,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 140.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Amal Tarek',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 1 / 40),
                    Icon(Icons.check_circle, color: Colors.blueAccent)
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.person, color: Colors.blueAccent),
                        ),
                        Text(
                          'Frindes',
                          style: TextStyle(color: Colors.deepPurple),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.add_box, color: Colors.blueAccent),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.deepPurple),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.message, color: Colors.blueGrey),
                        ),
                        Text(
                          'Message',
                          style: TextStyle(color: Colors.brown),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.more_horiz, color: Colors.blueGrey),
                          onPressed: () {
                            _showMoreOption(context);
                          },
                        ),
                        Text(
                          'More',
                          style: TextStyle(color: Colors.brown),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width * 1 / 40)),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.school,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(height: 50.0),
                        Text(
                          'Awseem School',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.purple),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width * 1 / 40)),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.home, color: Colors.blueGrey),
                        SizedBox(height: 5.0),
                        Text(
                          'Lives in Giza',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.purple),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text(
                        'see more about Amal',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 10.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width * 1 / 20)),
                alignment: Alignment.topLeft,
                child: Text(
                  'Photos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 2.3 / 3,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Card(
                          child: Image.network(
                              'http://www.shuuf.com/shof/uploads/2014/08/23/jpg/shof_9e605b2505dedd5.jpg'),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text(
                        'see more photos',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 10.0,
                child: Divider(
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width * 1 / 20)),
                alignment: Alignment.topLeft,
                child: Text(
                  'Posts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 1 / 5,
                          height: 70.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/736x/48/62/a4/4862a4bc411388a0276eee014767c6ea--girly-m-drawing-girls.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Wahts in your mind",
                              hintStyle: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: 'DancingScript'),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          padding: EdgeInsets.only(
                              right:
                                  (MediaQuery.of(context).size.width * 1 / 40),
                              left:
                                  (MediaQuery.of(context).size.width * 1 / 40)),
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
          )
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
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/48/62/a4/4862a4bc411388a0276eee014767c6ea--girly-m-drawing-girls.jpg'),
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
        left: (MediaQuery.of(context).size.width * 1 / 26),
        right: (MediaQuery.of(context).size.width * 1 / 26),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Welcome to Amal page ',
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

  void _showMoreOption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.all((MediaQuery.of(context).size.width * 1 / 20)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.feedback, color: Colors.black),
                  SizedBox(width: MediaQuery.of(context).size.width * 1 / 40),
                  Text(
                    'Give Feedback or report this profile',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.all((MediaQuery.of(context).size.width * 1 / 20)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.block, color: Colors.black),
                  SizedBox(width: MediaQuery.of(context).size.width * 1 / 40),
                  Text(
                    'Block',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.all((MediaQuery.of(context).size.width * 1 / 20)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.link, color: Colors.black),
                  SizedBox(width: MediaQuery.of(context).size.width * 1 / 40),
                  Text(
                    'Copy link to profile',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.all((MediaQuery.of(context).size.width * 1 / 20)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: MediaQuery.of(context).size.width * 1 / 40),
                  Text(
                    'Search profile',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
