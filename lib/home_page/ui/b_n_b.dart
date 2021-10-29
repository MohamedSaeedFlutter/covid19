import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/constants.dart';

class BNB extends StatefulWidget {
  const BNB({Key key}) : super(key: key);


  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {

  @override
  Widget build(BuildContext context) {
     double kBnbHeight = MediaQuery.of(context).size.height;
     HomeApi.get(context).setHeights(bnb: kBnbHeight);
      return
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: "أسئلة",
            // activeIcon: ,
            // tooltip: "أسئلة",
            backgroundColor: kMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "أرسل استفسارات",
            // tooltip: "أرسل استفسارات",
            backgroundColor: kMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: "عن كوفيد 19",
            // tooltip: "عن كوفيد 19",
            backgroundColor: kMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
            // tooltip: "الرئيسية",
            backgroundColor: kMainColor,
          ),
        ],
        currentIndex: HomeApi.get(context).selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: HomeApi.get(context).onItemTapped,
      );


  }
}
