import 'package:flutter/material.dart';
import 'card_images.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:320.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children:<Widget>[
          CardImage("assets/photos/ima1.jpg"),
          CardImage("assets/photos/ima2.jpg"),
          CardImage("assets/photos/ima3.jpg"),
          CardImage("assets/photos/ima5.jpg"),
          CardImage("assets/photos/ima6.jpg"),
        ],
      ),
    );
  }

}