import 'package:flutter/material.dart';
import 'package:home_trip_app/floating_button/floating_action_button.dart';

class CardImage extends StatelessWidget{
  String pathImage = "assets/photo/ima1.jpg";
  CardImage(this.pathImage, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 350.0,
      width:300.0,
      margin:const EdgeInsets.only(
        top:80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image:AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape:BoxShape.rectangle,
        boxShadow:const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset:Offset(0.0,0.7),
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.4,1.2),
      children: <Widget>[
        card,
        FloationButtonGreen()
      ],
    );
  }
}