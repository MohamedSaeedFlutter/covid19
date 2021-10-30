import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/widgets/custum_txt_fld.dart';
import 'package:my_covid_app/home_page/widgets/share_widget.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';


class QuestionUi extends StatefulWidget {
  @override
  State<QuestionUi> createState() => _QuestionUiState();
}

class _QuestionUiState extends State<QuestionUi> {
  bool isQuestioned = false ;
  @override
  void initState() {
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        const Text(
          'أســــئلة',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 22,
            color: Color(0xff343233),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
        Image.asset('assets/images/img.png',
          width: MediaQuery.of(context).size.width,height: 120,),
        const Text(
          'أكتشف أكثر حول فيروس كورونا (كوفيد-19)',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 14,
            color: Color(0xff000000),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
        const Text(
          'اطلـع باسـتمرار علـى أحـدث المعلومـات عـن فاشـية مـرض كوفيـد - 19 التـي \nتتـاح علـى الموقـع الإلكتروني للمنظمـة وعـن طريـق سـلطات الصحـة \nالعموميـة الوطنيـة والمحليـة',
          style: TextStyle(
            fontFamily: 'TheSans Plain',
            fontSize: 12,
            color: Color(0xff000000),
          ),
          textAlign: TextAlign.right,
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.085,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 2.0, color: const Color(0xfff1f1f1)),
          ),
         child:
         Row( children: [
         SizedBox( height: 32, width: 32,
           child:  IconButton(
             onPressed: () {
               HomeApi.get(context).getSpecificQuestion(
                   HomeApi.get(context).searchField
               );
             },
             icon: const Icon(Icons.crop_square, size: 30,
             color: Colors.red, ),
             // Image.asset("assets/images/svg/rectangle.svg",
             //   height: 30, width: 30,)
           ),
         ),
           Expanded(
             child: CustumTextField2( hintTxt: 'علاج كوفيد باللقاح ...',
             ),
           ),
         ]
         ),
        ),
      // HomeApi.get(context).QuestionList == null ?
      // BlocConsumer<HomeApi, ChangState>(
      // listener: (context, state) {
      // print(state);
      // },
      // builder: (context, state) {
      // print(state);
      // print(" bloc Consumer works");
      // return
      BlocConsumer<HomeApi, ChangState>(listener: (context, state) {
      print("State00000...$state");
      }, builder: (context, state) {
        print("State5555555...$state");
        return
          Expanded(
              child:
          // FutureBuilder<dynamic>(
          // future: HomeApi.get(context).getQuestion(EndPoints.covidDatabaseSettingsSearch),
          // builder: (context, snapshot) {
          //       return (snapshot.connectionState == ConnectionState.done) ?
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              itemCount: HomeApi
                  .get(context)
                  .QuestionList
                  .length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Positioned(
                            child: IconButton(
                              icon: Image.asset("assets/images/share_icon.png",
                                height: 30, width: 30,),
                              onPressed: () async {
                                ShareLogic.onShare(context,
                                  "${HomeApi
                                      .get(context)
                                      .QuestionList[index]["title"]}\n${
                                      HomeApi
                                          .get(context)
                                          .QuestionList[index]["text"]
                                          ?.replaceAll(RegExp(
                                          ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"),
                                          ' ')
                                  }",
                                );
                              },
                            ), left: 1,),
                          Expanded(
                            child: Text(
                              HomeApi
                                  .get(context)
                                  .QuestionList[index]["title"]
                              , maxLines: 2,
                              style: const TextStyle(fontWeight: FontWeight.w600,
                                  fontSize: 14),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Html(
                          data: HomeApi
                              .get(context)
                              .QuestionList[index]["text"]),
                    ],
                  );
              })
          );
      })]),
    );
    // );
    //
    // }),
  // );
  //
  //   })
  //       ],
  //     );



  }
}


