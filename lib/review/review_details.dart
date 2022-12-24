import 'package:flutter/material.dart';

class ReviewDetails extends StatelessWidget {
  String nameUser = "Karuna";
  int stars_q;
  String details = "1 Review 5 photos";
  String comment = "This is the most amazing place i've ever known";
  ReviewDetails(this.nameUser,this.details, this.comment,this.stars_q, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //user name
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
          fontFamily: "Lato_text",
          fontSize: 13.0,
          color: Colors.white60,
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
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato_text",
          fontSize: 14.0,
          color: Colors.white60,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    // Main Component
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        user_details,
        user_comments,
      ]
    );
    return userDetails;
  }

}