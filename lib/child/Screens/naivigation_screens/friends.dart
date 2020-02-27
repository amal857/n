import 'package:flutter/material.dart';
class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friends ',
          style: TextStyle(
            fontSize: 23,
            color: Colors.purple.shade800,
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              size: 35,
              color: Colors.purple.shade800,
            ),
            onPressed: () {

            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/wallpaper.jpg'),
                  fit: BoxFit.cover,
                )),

          ),
          ListView.builder(itemBuilder: (context, position)
          {
            return _friends();

          },
            itemCount: 20,
          )

        ],
      ),
    );
  }
  Widget _friends()
  {
    return Padding(
      padding: EdgeInsets.all((MediaQuery.of(context).size.width*1/20)),
      child: Container(

        height: MediaQuery.of(context).size.height * 1 / 6,
        width: MediaQuery.of(context).size.width ,
        child: Material(
          elevation: 14,
          borderRadius: BorderRadius.circular(8.0),
          shadowColor: Colors.indigoAccent,
          child: Padding(
            padding:  EdgeInsets.all((MediaQuery.of(context).size.width*1/30)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width*1/26),
                  child: CircleAvatar(
                    backgroundImage:NetworkImage('https://i.pinimg.com/736x/48/62/a4/4862a4bc411388a0276eee014767c6ea--girly-m-drawing-girls.jpg'),
                    radius: 25,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    SizedBox(
                      height: 16,
                    ),
                    FlatButton(
                      child: Text(
                        'Aya Mohsen',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: (){},
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*1/7,
                    ),
                  ],

                ),
              ],
            ),
          ),
        ),




      ),);

  }
}
