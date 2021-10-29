import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';


class MotaminCont extends StatefulWidget {
  const MotaminCont({Key key}) : super(key: key);

  @override
  _MotaminContState createState() => _MotaminContState();
}

class _MotaminContState extends State<MotaminCont> {
  @override
  void initState() {
    // String updated = (HomeApi.get(context).motamin["covidStatisticsVaccine"]["updatedAt"]);
    // DateTime updatedAt = DateTime.parse(updated);
    // DateTime now =DateTime.now();
    // String duration = now.difference(updatedAt).toString().substring(0,4);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return HomeApi.get(context).motamin == null ?
      BlocConsumer<HomeApi, ChangState>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        print(state);
        print(" bloc Consumer works");
        return FutureBuilder<dynamic>(
          future: HomeApi.get(context).getMotamin(EndPoints.motamin),
          builder: (context, snapshot) {
            return
             (snapshot.connectionState == ConnectionState.done )?
            (snapshot.hasData)?
            Column(
              children: [
                const Text(
                  'تطعيم فايرس كورونا في فلسطين',
                  style: TextStyle(
                    fontFamily: 'TheSans',
                    fontSize: 20,
                    color: Color(0xff2f97b2),
                    fontWeight: FontWeight.w700,
                  ),
                  // textAlign: TextAlign.end,
                ),
                const SizedBox(height: 12,),
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color:  const Color(0xfff5f8fe),
                      ),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 106,right: 24),
                            child: Text(
                              "${HomeApi.get(context).motamin["covidStatisticsVaccine"]["des"]}",
                              style: const TextStyle(
                                fontFamily: 'TheSans Plain',
                                fontSize: 10,
                                color: Color(0xff3d3d3d),
                                height: 1.6,
                              ),
                              textHeightBehavior:
                              const TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${HomeApi.get(context).motamin["covidStatisticsVaccine"]["registered_cases"]}",
                                style: const TextStyle(
                                  fontFamily: 'TheSans',
                                  fontSize: 50,
                                  color: Color(0xff343233),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.end,
                              ),
                              const SizedBox(width: 24,),
                            ],

                          ),
                          Row( mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              // Text(
                              //   'اخر تحديث: من "duration" ساعات',
                              //   style: TextStyle(
                              //     fontFamily: 'TheSans Plain',
                              //     fontSize: 10,
                              //     color: Color(0xff6a6b6b),
                              //   ),
                              //   textAlign: TextAlign.right,
                              // ),
                              SizedBox(width: 12,),
                              Text(
                                'عدد المطعمين',
                                style: TextStyle(
                                  fontFamily: 'TheSans Plain',
                                  fontSize: 15,
                                  color: Color(0xff105574),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(width: 24,),
                            ],
                          ),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'غزة',
                                style: TextStyle(
                                  fontFamily: 'TheSans Plain',
                                  fontSize: 15,
                                  color: Color(0xffce0f68),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SvgPicture.asset(
                                "assets/images/svg/rectangle.svg",
                                color:const Color(0xffce0f68),
                              ),
                              // SizedBox(width: width * .001,),
                              Text(
                                '${HomeApi.get(context).motamin["covidStatisticsVaccine"]["gaza_vaccine"]}',
                                style: const TextStyle(
                                  fontFamily: 'TheSans',
                                  fontSize: 40,
                                  color: Color(0xff343233),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'الضفة',
                                style: TextStyle(
                                  fontFamily: 'TheSans Plain',
                                  fontSize: 15,
                                  color: Color(0xff0fce8d),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SvgPicture.asset(
                                "assets/images/svg/rectangle.svg",
                                color: Colors.green,
                              ),
                              Text(
                                '${HomeApi.get(context).motamin["covidStatisticsVaccine"]["west_bank_vaccine"]}',
                                style: const TextStyle(
                                  fontFamily: 'TheSans',
                                  fontSize: 40,
                                  color: Color(0xff343233),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ],),
                    ),
                    Positioned(left: 0,top: 0,
                      child: SvgPicture.asset("assets/images/syringe.png",
                        height: 100,width: 100,),
                    )
                  ],
                ),
              ],)
            :const Center(child: Text("جارى جلب البيانات"),)
                :const Center(child: Text("جارى جلب البيانات"),);
          },
        );
      },
    ): Column(
      children: [
        const Text(
          'تطعيم فايرس كورونا في فلسطين',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 20,
            color: Color(0xff2f97b2),
            fontWeight: FontWeight.w700,
          ),
          // textAlign: TextAlign.end,
        ),
        const SizedBox(height: 12,),
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color:  const Color(0xfff5f8fe),
              ),
              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 106,right: 24),
                    child: Text(
                      "${HomeApi.get(context).motamin["covidStatisticsVaccine"]["des"]}",
                      style: const TextStyle(
                        fontFamily: 'TheSans Plain',
                        fontSize: 10,
                        color: Color(0xff3d3d3d),
                        height: 1.6,
                      ),
                      textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "${HomeApi.get(context).motamin["covidStatisticsVaccine"]["registered_cases"]}",
                        style: const TextStyle(
                          fontFamily: 'TheSans',
                          fontSize: 50,
                          color: Color(0xff343233),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(width: 24,),
                    ],

                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      // Text(
                      //   'اخر تحديث: من "duration" ساعات',
                      //   style: TextStyle(
                      //     fontFamily: 'TheSans Plain',
                      //     fontSize: 10,
                      //     color: Color(0xff6a6b6b),
                      //   ),
                      //   textAlign: TextAlign.right,
                      // ),
                      SizedBox(width: 12,),
                      Text(
                        'عدد المطعمين',
                        style: TextStyle(
                          fontFamily: 'TheSans Plain',
                          fontSize: 15,
                          color: Color(0xff105574),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(width: 24,),
                    ],
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'غزة',
                        style: TextStyle(
                          fontFamily: 'TheSans Plain',
                          fontSize: 15,
                          color: Color(0xffce0f68),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SvgPicture.asset(
                        "assets/images/svg/rectangle.svg",
                        color:const Color(0xffce0f68),
                      ),
                      // SizedBox(width: width * .001,),
                      Text(
                        '${HomeApi.get(context).motamin["covidStatisticsVaccine"]["gaza_vaccine"]}',
                        style: const TextStyle(
                          fontFamily: 'TheSans',
                          fontSize: 40,
                          color: Color(0xff343233),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'الضفة',
                        style: TextStyle(
                          fontFamily: 'TheSans Plain',
                          fontSize: 15,
                          color: Color(0xff0fce8d),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SvgPicture.asset(
                        "assets/images/svg/rectangle.svg",
                        color: Colors.green,
                      ),
                      Text(
                        '${HomeApi.get(context).motamin["covidStatisticsVaccine"]["west_bank_vaccine"]}',
                        style: const TextStyle(
                          fontFamily: 'TheSans',
                          fontSize: 40,
                          color: Color(0xff343233),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],),
            ),
            Positioned(left: 0,top: 0,
              child: SvgPicture.asset("assets/images/syringe.png",
                height: 100,width: 100,),
            )
          ],
        ),
      ],);
  }
}
