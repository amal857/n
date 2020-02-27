import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            child: Column(
              children: <Widget>[
                _cardHeader(),
                _cardBody(),
                _drawLine(),
                _cardFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
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
                  width: 8,
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
        FlatButton(onPressed: (){}, child:
            Icon(Icons.more_horiz),
          padding: EdgeInsets.only(left: 70,),


        ),
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
                  padding: const EdgeInsets.only(right: 55),
                  child: Text(
                    '30K',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13, height: 1.2, color: Colors.grey.shade800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 76),
                  child: Text(
                    '3K Comments.400 Shares',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 13, height: 1.2, color: Colors.grey.shade800),
                  ),
                ),
              ],
            ),
            onPressed: () {},
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
                  onPressed: () {},
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
