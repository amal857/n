/*
import 'package:first_run/group/creategroup_screen.dart';
import 'package:first_run/group/group_screen.dart';
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Groups ',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateGroup()),
              );
            },
          )
        ],
      ),
      body:
       Stack(
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
                return _groups();

              },
                itemCount: 20,
              ),


          ],


       ),
    );
  }
  Widget _groups()
  {
    return
       Padding(
        padding: EdgeInsets.all((MediaQuery.of(context).size.width*1/20)),
        child: Container(

          height: MediaQuery.of(context).size.height * 1 / 6,
          width: MediaQuery.of(context).size.width ,
          child: Material(
            elevation: 14,
            borderRadius: BorderRadius.circular(8.0),
            shadowColor: Colors.cyan,
            child: Padding(
              padding:  EdgeInsets.all((MediaQuery.of(context).size.width*1/30)),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.width*1/26),
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage('images/profile_page.jpg'),
                        radius: 25,
                      ),
                        onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroupScreen()),
                        );
                        }
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
                          'MBC3',
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GroupScreen()),
                          );
                        },
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




        ),

    );

  }
}

 */
