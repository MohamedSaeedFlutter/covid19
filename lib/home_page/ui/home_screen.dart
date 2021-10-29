import 'package:flutter/material.dart';
import 'package:my_covid_app/contact_pages/contact_us.dart';
import 'package:my_covid_app/details_page/ui/covid_detail.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/ui/drawer0.dart';

import 'package:my_covid_app/search_questions/ui/question_ui.dart';
import 'package:my_covid_app/states/constants.dart';
import 'first_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
static var selectedIndex = 3;
  _onItemTapped(var index){
    setState(() {
      selectedIndex = index;
    });
  }
bool _showDrawerVar = false;
_showDrawerStateFunction(){
  setState(() {
    _showDrawerVar = !_showDrawerVar;
  });
}
  bool langClicked = false;

  String defaultImg = "https://upload.wikimedia.org/"
      "wikipedia/commons/thumb/b/bc/Unknown_person.jpg/542px-Unknown_person.jpg";
  TextEditingController phController = TextEditingController();
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> get _widgetOptions => <Widget>[
     QuestionUi(),
     ContactUs(),
     CovidDetail(),
     FirstScreen(),
     Drawer0(),
     // HomeApi.get(context).drawerstate?
     // HomeApi.get(context).drawerval: Drawer0(),
   ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            backgroundColor: kMainColor,
            leading: IconButton(
              icon: const Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
            elevation: 0.0,
            actions:  <Widget>[
              IconButton( icon : const Icon(Icons.menu),
                  onPressed: () {
                    return setState(() {
                      selectedIndex = 4;
                    });
                  },),
            ]),
        body: Center(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        drawer: Drawer0(),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: selectedIndex < 4 ? selectedIndex : 3 ,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      );
    // });
  }
}
