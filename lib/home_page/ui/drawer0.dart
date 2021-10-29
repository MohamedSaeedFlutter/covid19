import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/contact_pages/contact_us.dart';
import 'package:my_covid_app/details_page/ui/detail_covid.dart';
import 'package:my_covid_app/details_page/ui/we.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/widgets/all_sehia.dart';
import 'package:my_covid_app/home_page/widgets/home_articles.dart';
import 'package:my_covid_app/home_page/widgets/home_news.dart';
import 'package:my_covid_app/home_page/widgets/info_graphic.dart';
import 'package:my_covid_app/home_page/widgets/question_home.dart';
import 'package:my_covid_app/search_questions/ui/question_ui.dart';

class Drawer0 extends StatelessWidget {
  var icons = [
    "assets/images/articles_drawer.png",
    "assets/images/news_drawer.png",
    "assets/images/health_topics_drawer.png",
    "assets/images/about_covid_drawer.png",
    "assets/images/infographic_drawer.png",
    "assets/images/who_are_we_drawer.png",
    "assets/images/Inquiries_database_drawer.png",
    "assets/images/send_inquiry_drawer.png",
    "assets/images/contact_us_drawer.png"
  ];
  var drawerModel = [
    "المقـــــــالات",
    "الأخبار",
    "مواضيع صحية",
    "عن كوفـيد 19",
    "إنفوجرافيك",
    "من نحن",
    "قاعدة بيانات الاستفسارات",
    "ارسل استفسارك",
    "اتصل بنا",
  ];
  List<Widget> x = [
    const HomeArticles(),
    const HomeNews(),
    const AllSehiaStack(),
    DetailCovid(),
    Infografic(),
    MnNahno(),
    QuestionUi(),
    QuestionHome(),
    ContactUs()
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView(
      shrinkWrap: true,scrollDirection: Axis.vertical, physics: const ScrollPhysics(),
      children: [
        Container(
            color: const Color(0xffffffff),
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset("assets/images/svg/covid_home.svg")),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            color: Color(0xf22f97b2),
          ),
          child: Column(
            children: [
              const Text(
                'القائمة الرئيسية',
                style: TextStyle(
                  fontFamily: 'TheSans',
                  fontSize: 16,
                  color: Color(0xffc2faff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
              SingleChildScrollView(
                child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: drawerModel.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                HomeApi.get(context).showDrawerState();
                                  HomeApi.get(context).setDrawer(x[index]);
                              },
                              child: Text(
                                drawerModel[index],
                                style: const TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Image.asset(icons[index]),
                            SizedBox(
                              width: width * 0.04,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
