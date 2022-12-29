import 'package:flutter/material.dart';
import '../gradient/gradient_back.dart';
import '../cards/card_image_list.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Popular"),
        CardImageList()
      ]
    );
    throw UnimplementedError();
  }

}