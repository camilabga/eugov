import 'package:eugov/src/values/strings.dart';
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
         ),
        drawer: new Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new UserAccountsDrawerHeader(
                      accountName: new Text('Teste',
                      style: TextStyle(
                        fontFamily: 'Raleway'
                      )),
                      accountEmail: new Text('teste@teste.com.br'),
                      currentAccountPicture: new CircleAvatar(
                      backgroundImage: new NetworkImage('http://placekitten.com/200/300'),
                      ),
                    ),
                  ]
                ),
                new ListTile(
                  title: new Text('Eu'),
                ),
              ],
            )
          ),
        )
      ],
      
    );
  }
}