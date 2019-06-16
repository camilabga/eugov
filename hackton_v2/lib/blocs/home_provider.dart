import 'package:flutter/material.dart';
import 'package:hackton_v2/blocs/bloc_inject.dart';

class HomeProvider extends InheritedWidget{
  
  final BlocInject bloc = BlocInject();


  HomeProvider({Key key, child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static BlocInject of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(HomeProvider) as HomeProvider).bloc;
  }
}

