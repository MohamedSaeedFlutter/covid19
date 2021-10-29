import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/widgets/custum_txt_fld.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';


class QuestionUi extends StatefulWidget {
  @override
  State<QuestionUi> createState() => _QuestionUiState();
}

class _QuestionUiState extends State<QuestionUi> {
  // var HomeApi.get(context).QuestionList , storageUrl;
  @override
  void initState() {
//  HomeApi.get(context).QuestionList = HomeApi.get(context).QuestionList;
// storageUrl = HomeApi.get(context).storageUrl;
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xffffffff),
          border: Border.all(width: 2.0, color: const Color(0xfff1f1f1)),
        ),
       child:
       Stack( children: [
         CustumTextField2( hintTxt: 'علاج كوفيد باللقاح ...',
         iconPath: 'assets/images/svg/rectangle.svg',),
       IconButton(onPressed: () {
        // HomeApi.get(context).getHomeApi.get(context).QuestionList('${EndPoints.covidHomeApi.get(context).QuestionListbaseSettingsSearch}${HomeApi.get(context).searchField}');
       },
           icon: Image.asset("assets/images/svg/rectangle.svg")),
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
    Expanded(child:
    // FutureBuilder<dynamic>(
    // future: HomeApi.get(context).getQuestion(EndPoints.covidDatabaseSettingsSearch),
    // builder: (context, snapshot) {
    //       return (snapshot.connectionState == ConnectionState.done) ?
         ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              itemCount:HomeApi.get(context).QuestionList.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Column( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Positioned(
                            child: Image.asset("assets/images/share_icon.png",
                              height: 30,width: 30,),left: 1,),
                          Expanded(
                            child: Text(
                              HomeApi.get(context).QuestionList[index]["title"]
                              ,maxLines: 2,style: const TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text(HomeApi.get(context).QuestionList[index]["text"]?.replaceAll(RegExp(
                          ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' '),
                        style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                    ],
                  );
              }))]);
    // : const SizedBox();
    // }),
  // );
  //
  //   })
  //       ],
  //     );



  }
}


