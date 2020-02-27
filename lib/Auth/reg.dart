import 'package:first_run/splash/NewSplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:first_run/Auth/Animation/FadeAnimation.dart';

import '../parent/list_children.dart';
class Reg extends StatefulWidget {
  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/background.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Positioned(
                    height: 400,
                    width: width + 20,
                    child: FadeAnimation(
                        1.3,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/background-2.png'),
                                  fit: BoxFit.fill)),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1.5,
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color.fromRGBO(49, 39, 79, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(
                      1.7,
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(196, 135, 198, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey[200]))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey[200]))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey[200]))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Date Of Birth",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 30,),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*1/7,
                          child: Text(
                            "Gender",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue[50],
                          maxRadius: 10,
                          child: Icon(Icons.tag_faces, color: Colors.grey,size: 15,),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*1/7,
                          child: Text(
                            "Male",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue[50],
                          maxRadius: 10,
                          child: Icon(
                            Icons.face,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*1/5,
                          child: Text(
                            "Female",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
//                  FadeAnimation(1.7, Center(child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),))),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(
                      1.9,
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(49, 39, 79, 1),
                        ),
                        child: Center(
                          child: RaisedButton(
                            child:Text("Create Account",style: TextStyle(color: Colors.white), ),
                            color: Color.fromRGBO(49, 39, 79, 1),
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PageParent()),
                              );
                            },

                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
//                  FadeAnimation(2, Center(child: Text("Create Account", style: TextStyle(color: Color.fromRGBO(49, 39, 79, .6)),))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


