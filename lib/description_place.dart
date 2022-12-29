import 'package:flutter/material.dart';
import 'button/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars_q;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars_q, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //qualify with half star
    final start_half = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        right: 3.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    //qualify with empty start
    final empty_half = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        right: 3.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    //complete stars
    final stars = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        right: 3.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        right: 25.0,
        left: 25.0,
      ),
      child: Text(
        descriptionPlace,
        style:const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_start = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 25.0,
            right: 25.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            stars,
            stars,
            stars,
            stars,
            stars,
          ],
        ),
      ],
    );
    return Column(
      //esta propiedad sirve para alinear al inicio los elementos de una columna
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_start,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}
