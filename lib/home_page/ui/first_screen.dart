import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/widgets/home_articles.dart';
import 'package:my_covid_app/home_page/widgets/home_news.dart';
import 'package:my_covid_app/home_page/widgets/info_graphic.dart';
import 'package:my_covid_app/home_page/widgets/motamin_cont.dart';
import 'package:my_covid_app/home_page/widgets/question_home.dart';

import 'package:my_covid_app/home_page/widgets/sehia_field.dart';
import 'package:my_covid_app/home_page/widgets/statis_cont.dart';
import 'package:my_covid_app/home_page/widgets/top_home_container.dart';



class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView(
        shrinkWrap: true, scrollDirection: Axis.vertical,physics: const ScrollPhysics(),
        children:  [
                 Expanded(child: TopHomeCont()),
           const Expanded(child: SehiaField()),
          const Expanded(child: HomeArticles()),
          const Expanded(child: StatisCont()),
          const Expanded(child: MotaminCont()),
          const Expanded(child: HomeNews()),
                Expanded(child: QuestionHome()),
                Infografic(),
        ],
      ),
    );
  }
}
