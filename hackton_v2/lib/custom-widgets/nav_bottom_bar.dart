import 'package:flutter/material.dart';
import 'package:hackton_v2/blocs/home_bloc.dart';

class CustomNavBottomBar extends StatelessWidget {
  final HomeBloc bloc;
  final PageController controller;

  const CustomNavBottomBar({
    Key key, 
    this.bloc,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: bloc.page,
      builder: (context, snapshot) {
        return Container(
          height: 70,
          width: double.infinity,
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  bloc.setPage(0); 
                  controller.jumpToPage(0);
                },
                child: Icon(Icons.home,color: snapshot.data == 0 ? Colors.redAccent : Colors.grey)
                 
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  bloc.setPage(1); 
                  controller.jumpToPage(1);
                },
                child: Icon(Icons.list,color: snapshot.data == 0 ? Colors.grey : Colors.redAccent)
              ),
            ),
            
          ],),
        );
      }
    );
  }
}