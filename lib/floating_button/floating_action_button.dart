import 'package:flutter/material.dart';


class FloationButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloationButtonGreen();
  }

}

class _FloationButtonGreen extends State<FloationButtonGreen>{
  void onPressedFav(){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Added to favorite"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  FloatingActionButton(
      backgroundColor: const Color(0xff11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: const Icon(
        Icons.favorite_border
      ),
    );
  }

}