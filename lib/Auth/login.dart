
import 'package:first_run/Auth/reg.dart';
import 'package:flutter/material.dart';
import 'package:first_run/Auth/Animation/FadeAnimation.dart';

import '../splash/NewSplashScreen.dart';
    class Login extends StatefulWidget {
      @override
      _LoginState createState() => _LoginState();
    }

    class _LoginState extends State<Login> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/backgroundlogin.png'),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: FadeAnimation(1, Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/light-1.png')
                                )
                            ),
                          )),
                        ),
                        Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: FadeAnimation(1.3, Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/light-2.png')
                                )
                            ),
                          )),
                        ),
                        Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: FadeAnimation(1.5, Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/clock.png')
                                )
                            ),
                          )),
                        ),
//                    Positioned(
//                      child: FadeAnimation(1.6, Container(
//                        margin: EdgeInsets.only(top: 50),
//                        child: Center(
//                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
//                        ),
//                      )),
//                    )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(1.8, Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                    blurRadius: 20.0,
                                    offset: Offset(0, 10)
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(height: 30,),
                        FadeAnimation(2, Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ]
                              )
                          ),
                          child: Center(
                            child: RaisedButton(color: Color.fromRGBO(143, 148, 251, 6),child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SplashScreen()),
                                );

                              },
                            ),
                          ),
                        )),
//                    SizedBox(height: 70,),
//                    FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                        SizedBox(height: 50,),
                        RaisedButton(color: Color.fromRGBO(143, 148, 251, 6),child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Reg()),
                            );

                          },
                        ),
//                    FadeAnimation(1.5, Text("Sign Up", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    }



