import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
       Scaffold(
         appBar:AppBar(
           title: Text("EuGov",
           style: TextStyle(fontSize: 20),
           ),
           leading: IconButton(
             onPressed: (){},
             icon: Icon(Icons.menu),
           ),
        
         )
       )
      ],
      
    );
  }
}