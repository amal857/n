import 'package:first_run/Auth/login.dart';
import 'package:first_run/Auth/reg.dart';
import 'package:first_run/splash_screen.dart';
import 'package:flutter/material.dart';
import 'child/Screens/naivigation_screens/pages.dart';
import 'child/list_requests.dart';
//import 'splace_screen.dart';
import 'splash/NewSplashScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:first_run/parent/list_children.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: SplashScreen(),
   //   home: ListRequests (),
    //  home:SplashScreen(),
    //  home:Reg(),

      home:Login(),

    //  home: SplashScreen(),
    );
  }
}



