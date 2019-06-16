import 'package:flutter/material.dart';
import 'package:hackton_v2/blocs/home_provider.dart';
import 'package:hackton_v2/pages/fale_conosco/index.dart';
import 'package:hackton_v2/pages/login/index.dart';
import 'package:hackton_v2/pages/page2.dart';

void main() => runApp(
  HomeProvider(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    )
));