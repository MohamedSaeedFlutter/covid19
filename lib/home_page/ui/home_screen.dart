import 'package:flutter/material.dart';
import 'package:my_covid_app/contact_pages/contact_us.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/ui/drawer0.dart';

import 'package:my_covid_app/search_questions/ui/question_ui.dart';
import 'b_n_b.dart';
import 'first_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool langClicked = false;

  String defaultImg = "https://upload.wikimedia.org/"
      "wikipedia/commons/thumb/b/bc/Unknown_person.jpg/542px-Unknown_person.jpg";
  TextEditingController phController = TextEditingController();
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> get _widgetOptions => <Widget>[
     // QuestionUi(),
     // ContactUs(),
     const Text(""),
     const Text(""),
     const Text(""),
     //  PostDetail(data: HomeApi.get(context).allPostsList,),
     HomeApi.get(context).drawerstate ?  Drawer0() : FirstScreen(),
   ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: _widgetOptions.elementAt(HomeApi.get(context).selectedIndex),
        ),
        drawer: Drawer0(),
        bottomNavigationBar: const BNB(),
      );
    // });
  }
}
