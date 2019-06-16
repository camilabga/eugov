
import 'package:flutter/material.dart';
import 'package:hackton_v2/custom-widgets/text/index.dart';

 class Items extends StatelessWidget{
 String texto;
 String data;
 Color cor;
 IconData icon;
 Color iconColor;
 
 
 Items({this.texto,this.data,this.cor,this.icon,this.iconColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
        color: cor,
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        children: <Widget>[
        Expanded(
                  child: CustomText(
              text:"$texto",
              color: Colors.black,),
        ),
        
          Icon(icon,color: iconColor,)
        ],
        ),
      )
     );      
  }
 
 
  }
