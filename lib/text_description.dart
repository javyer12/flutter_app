import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description = Container (
      margin: const EdgeInsets.only(
        top: 30.0,
        right: 30.0,
        left: 30.0
      ),
      child: const Text(
        '''El widget Column, como ya vimos, nos permite organizar distintos elementos visuales de la interfaz (también widgets) de manera vertical, alineados uno arriba, debajo del otro en el eje Y.''',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.normal,
          color: Colors.blueGrey,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return description;
  }

}