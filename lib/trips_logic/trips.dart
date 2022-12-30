import 'package:flutter/material.dart';
import '../home/home_trip.dart';
import '../home_bar/search_trips.dart';
import '../home_bar/profile_trips.dart';
import '../home_bar/most_recommend.dart';


class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    MostRecommend(),
    ProfileTrips(),
  ];
  void onTapTapped(int index) {
    //CONTROLA EL ESTADO DEL WIDGET
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: "",
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.menu),
              //   label: "",
              // ),
            ]),
      ),
    );
  }
}
