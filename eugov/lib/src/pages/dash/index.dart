import 'package:eugov/src/custom-widgets/card_view/index.dart';
import 'package:eugov/src/custom-widgets/logo/index.dart';
import 'package:flutter/material.dart';
import 'package:eugov/src/values/colors.dart';

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
        
         ),
         body: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding:EdgeInsets.only(top:32.0,right: 16,left: 16,bottom: 16),
               child: Column(
                 children: <Widget>[
                   CardView(
                     height:400,
                     width: MediaQuery.of(context).size.width - 60,
                     child: Column(
                       children: <Widget>[
                         Logo()
                       ],
                     ),
                    
                   ),
                 ],
               ),
             ),
           ],
         ),
       )
      ],
      
    );
  }
}