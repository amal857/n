import 'package:first_run/page/page_screen.dart';
import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  _backPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PageScreen('ID')));
    });
  }

  @override
  Widget build(BuildContext context) {
    var textInput = Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width * 1 / 26)),
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Type a message",
              ),
            ),
          ),
        ),
        IconButton(
          color: Theme.of(context).primaryColor,
          icon: Icon(
            Icons.send,
          ),
          disabledColor: Colors.grey,
          onPressed: () {},
        ),
      ],
    );
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Scaffold(
        backgroundColor: Colors.white, //Color(0xFFcccccc),
        appBar: AppBar(
          backgroundColor: Colors.white,
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
                      color: Colors.grey,
                      onPressed: () {}),
                ],
              )),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, position) {
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
                                      'assets/images/profile_page.jpg'),
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
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'Aya Mohsen',
                                        textAlign: TextAlign.left,
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
                                      'welcome to mbc3 welcome to mbc3 welcome to mbc3 welcome to mbc3',
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
                itemCount: 20,
              ),
            ),
            Divider(height: 2.0),
            textInput
          ],
        ),
      ),
    );
  }
}
