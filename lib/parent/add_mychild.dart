import 'package:flutter/material.dart';
class AddChild extends StatefulWidget {
  @override
  _AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  @override
  Widget build(BuildContext context) {
    String dropval;
    void dropchange(String val){
      setState(() {
        dropval=val;
      });
    }
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person_outline))
        ],
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('New Child',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize:20.0,
            fontStyle:FontStyle.italic
        ),),
        centerTitle: true,
      ),
      body: Form(
     child: ListView(
       children: <Widget>[
         Container(
           child: Padding(
             padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 TextFormField(
                   decoration:InputDecoration(
                     icon: Icon(Icons.person),
                     hintText: 'User Name',
                   ),
                 ),
                 SizedBox(height: 10),
                 TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   decoration:InputDecoration(
                     icon: Icon(Icons.email),
                     hintText: 'Email',
                   ),),
                 SizedBox(height: 10),
                 TextFormField(
                   obscureText: true,
                   decoration:InputDecoration(
                     icon: Icon(Icons.visibility_off),
                     hintText: 'Password',
                   ),),
                 SizedBox(height: 10),
                 TextFormField(
                   keyboardType: TextInputType.number,
                   obscureText: true,
                   decoration:InputDecoration(
                     icon: Icon(Icons.calendar_today),
                     hintText: 'Age',
                   ),),
                 SizedBox(height: 10),
                 TextFormField(
                   keyboardType: TextInputType.phone,
                   obscureText: true,
                   decoration:InputDecoration(
                     icon: Icon(Icons.phone),
                     hintText: 'Phone Number',
                   ),),
                 SizedBox(height: 10),
                 Container(
                   width: double.infinity, // specific value
                   child: DropdownButton<String>(
                     icon: Icon(Icons.group,),
                     elevation: 1,
                     onChanged: dropchange,
                     value: dropval,
                     hint: Text('Gender',style: TextStyle(fontSize: 22,),),
                     items: <String>['Male','Female']
                         .map<DropdownMenuItem<String>>((String value){
                       return DropdownMenuItem<String>(
                         child:Text(value),
                         value:value,
                       );
                     }).toList(),
                   ),
                 ),
                 SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                       height: 50,
                       width: double.infinity, // specific value
                       child: RaisedButton(
                         color:Colors.deepOrangeAccent,
                         child: Text('Sign in',style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40.0)),
                           onPressed: () {},
                       )),
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
      ),
    );
  }
}

