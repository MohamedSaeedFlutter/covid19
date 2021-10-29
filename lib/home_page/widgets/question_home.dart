import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/widgets/custum_txt_fld.dart';

class QuestionHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'قاعدة بيانات الاستفسارات',
        style: TextStyle(
          fontFamily: 'TheSans',
          fontSize: 22,
          color: Color(0xff343233),
          fontWeight: FontWeight.w600,
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
          borderRadius: BorderRadius.circular(11.0),
          color: const Color(0xfff8f8f8),
        ),
        child:
        Column( mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustumTextField2(hintTxt: 'علاج كوفيد باللقاح ...',
              iconPath: 'assets/images/svg/rectangle.svg',),
            const Positioned(
              child: Text(
                'طوارئ 24 ساعة',
                style: TextStyle(
                  fontFamily: 'TheSans',
                  fontSize: 20,
                  color: Color(0xfff3688e),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Positioned(
              child: Text(
                'الضفة  1800000888',
                style: TextStyle(
                  fontFamily: 'TheSans',
                  fontSize: 20,
                  color: Color(0xff4b4b4b),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const Positioned(
              child: Text(
                'غـــــــــــزة  103',
                style: TextStyle(
                  fontFamily: 'TheSans',
                  fontSize: 20,
                  color: Color(0xff4b4b4b),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      )
        ],
      );



  }
}


