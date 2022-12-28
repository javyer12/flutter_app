import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String AppBarTitle = "Popular";
  GradientBack(this.AppBarTitle);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
        ),
      ),

      alignment: const Alignment(-0.9, -0.6),

      child:Text(
        AppBarTitle,
        style:const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}

//stack sirve para colocar un elemento encima de otro