import 'package:flutter/material.dart';
import '../review.dart';
class ReviewList extends StatelessWidget{
  String photoPath = "assets/photos/darleny.jpeg";
  String nameUser = "Darleny";
  // int stars_q = 5;
  String details = "1 Review 5 photos";
  String comment = "It's the most amazing place i've ever known";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(photoPath, nameUser,  details, comment),
        Review("assets/photos/ima1.jpg", nameUser,  details, comment),
        Review(photoPath, nameUser, details, comment),
        Review("assets/photos/ima3.jpg", nameUser,  details, comment),
        Review(photoPath, nameUser, details, comment),
      ],
    );
  }

}
//agregar conteo de estrellas dinamico en el titulo y la descripcion de usuario