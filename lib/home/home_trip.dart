import 'package:flutter/material.dart';

import '../description_place.dart';
import '../header/header_appbar.dart';
import '../review/review_list.dart';

class HomeTrips extends StatelessWidget{
  String text = '''El widget Column, como ya vimos, nos permite organizar distintos elementos visuales de la interfaz (también widgets) de manera vertical, alineados uno arriba / debajo del otro en el eje Y.
   
 Los widgets hijos, que van a ser organizados dentro de un Column padre, deben estar definidos en la propiedad children de éste, como un arreglo de elementos de tipo [...].''';
  // HomeTrips(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      // width: MediaQuery.of(context).size.width*0.65,
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Peru", 3, text),
            ReviewList(),
          ],
        ),
        Header(),
      ],
    );
  }

}