import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  var _assetsImage = new AssetImage('asset/images/homen.png');

  @override
  Widget build(BuildContext context) {
    return Image(
      image: _assetsImage, 
      //height: 600,
      fit: BoxFit.cover,
    );
  }
}
