import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String photoPath;
  String nameUser;
  // int stars_q;
  String details;
  String comment;
  Review(this.photoPath,this.nameUser, this.details,this.comment, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userName = Container(
      margin:const EdgeInsets.only(
          left:20.0
      ),
      child: Text(
        nameUser,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Colors.black,
        ),
      ),
    );

    //user_details
    final user_details = Container(
      margin:const EdgeInsets.only(
          left:20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.black38,
        ),
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

    final user_comments = Container(
      margin:const EdgeInsets.only(
          left:20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.black54,
          fontWeight: FontWeight.w900,
        ),
      ),
    );


 ////////////////////Full component details   ////////////////
    // Main Component
    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          user_details,
          user_comments,
        ]
    );

////////////////////////////////////////////////////////////
//    left component
    final photo = Container(
      margin: const EdgeInsets.only(
        top:20.0,
        left:20.0,
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(photoPath),
        ),
      ),
    );


    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }

}