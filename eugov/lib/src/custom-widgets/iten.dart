import 'package:flutter/material.dart';

abstract class ListItem {}

// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}













/** 
 * class Items extends StatelessWidget{
 * String texto
 * Icon notificacao
 * 
 * Items({this.texto,this.notificao});
 * 
 * 
 * 
 * 
 * 
 * }
*/