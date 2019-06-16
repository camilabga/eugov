import 'package:flutter/material.dart';
import 'package:hackton_v2/blocs/home_bloc.dart';
import 'package:hackton_v2/custom-widgets/nav_bottom_bar.dart';
import 'package:hackton_v2/pages/page1.dart';
import 'package:hackton_v2/pages/page2.dart';

class HomePage extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();

    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          bloc.setPage(index);
        },
        controller: _controller,
        children: <Widget>[
          Page1(),
          Page2(),
          
        ],
      ),

      bottomNavigationBar: CustomNavBottomBar(bloc: bloc, controller: _controller)
    );
  }
}