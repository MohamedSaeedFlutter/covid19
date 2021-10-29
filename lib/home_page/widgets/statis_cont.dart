import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';

class StatisCont extends StatefulWidget {
  const StatisCont({Key key}) : super(key: key);

  @override
  _StatisContState createState() => _StatisContState();
}

class _StatisContState extends State<StatisCont> {
  @override
  void initState() {
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return
    HomeApi.get(context).statistics == null ?
      // BlocConsumer<HomeApi, ChangState>(
      // listener: (context, state) {
      //   print(state);
      // },
      // builder: (context, state) {
      //   print(state);
      //   print(" bloc Consumer works");
      //   return FutureBuilder<dynamic>(
      //     future: HomeApi.get(context).getStatistics(EndPoints.statistics),
      //     builder: (context, snapshot) {
            // print("duration: $duration");
            // return (snapshot.connectionState == ConnectionState.done )?
            // (snapshot.hasData)?
    // return
      Column(
      children: [
        const Text(
          'فايروس كورونا في فلسطين',
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 106,right: 24),
                    child: Text(
                      "${HomeApi.get(context).statistics["covidStatistics"]["des"]}",
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
                        "${HomeApi.get(context).statistics["covidStatistics"]["registered_cases"]}",
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
                    children:  const [
                      // Text(
                      //   'اخر تحديث: من "duration" ساعات',
                      //   style: TextStyle(
                      //     fontFamily: 'TheSans Plain',
                      //     fontSize: 10,
                      //     color: Color(0xff6a6b6b),
                      //   ),
                      //   textAlign: TextAlign.right,
                      // ),
                      SizedBox(width: 24,),
                      Text(
                        'الحالات المسجلة',
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
                        'الوفيات',
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
                      SizedBox(width: width * .038,),
                      Text(
                        '${HomeApi.get(context).statistics["covidStatistics"]["deaths"]}',
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
                        'المتعافون',
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
                        '${HomeApi.get(context).statistics["covidStatistics"]['recovered']}',
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
            Positioned(left: 0,top: 8,
              child: SvgPicture.string(
                '<svg viewBox="14.3 2433.8 112.3 112.7" ><path transform="translate(-269.95, 2027.28)" d="M 362.9287414550781 416.2034301757812 C 367.3232727050781 408.31005859375 350.9926452636719 401.2986145019531 351.7836608886719 416.1991577148438 C 352.02978515625 420.8439636230469 351.3565979003906 425.2012939453125 349.2445373535156 428.5254821777344 C 342.0857849121094 439.7841186523438 332.1376342773438 437.177490234375 335.9663391113281 428.3677368164062 C 337.8343811035156 424.0665893554688 336.8877258300781 418.8749389648438 331.7905883789062 419.4131164550781 C 327.2993469238281 419.886474609375 325.8709716796875 424.5464172363281 328.5951232910156 428.2035217285156 C 329.5397033691406 429.4722290039062 330.8881225585938 430.9159851074219 330.6104736328125 433.2308654785156 C 330.3874816894531 435.093994140625 328.940185546875 436.6393737792969 327.0952758789062 436.7474670410156 C 321.2218627929688 437.0932006835938 313.6676635742188 426.7964172363281 311.2190246582031 423.24951171875 C 305.0491027832031 414.3078918457031 305.9389343261719 406.2675476074219 298.3868713378906 406.4945068359375 C 293.0204467773438 406.6544494628906 291.5541381835938 411.8482360839844 291.8319091796875 414.5953979492188 C 292.6923217773438 423.0874633789062 305.8463439941406 419.9772033691406 315.3989868164062 435.0226440429688 C 324.6740417480469 449.6270751953125 310.1861877441406 454.4664001464844 296.4893798828125 443.5513916015625 C 285.108642578125 434.4822998046875 281.0717163085938 448.2892150878906 286.7894592285156 452.4823303222656 C 290.4834289550781 455.1905212402344 294.8190612792969 452.8367614746094 299.0747680664062 452.25537109375 C 318.87841796875 449.5491943359375 323.4411926269531 465.281982421875 310.0030822753906 469.6068725585938 C 305.730712890625 470.9815063476562 301.9230651855469 470.6594848632812 300.3663635253906 474.7964477539062 C 298.8475341796875 478.8339233398438 302.4027099609375 483.0680541992188 306.3512268066406 482.5103759765625 C 310.3377075195312 481.948486328125 310.8951110839844 477.8958129882812 312.6264038085938 474.413818359375 C 313.8002014160156 472.0557861328125 317.6077880859375 467.1429443359375 321.2597351074219 468.9217529296875 C 324.4151916503906 470.45849609375 322.5787353515625 477.8309326171875 321.8655700683594 480.8418579101562 C 317.980224609375 497.2380981445312 308.2697448730469 504.8330688476562 307.5545043945312 510.7337646484375 C 307.0075988769531 515.26611328125 310.0242004394531 518.6227416992188 314.0253295898438 519.1220703125 C 326.2285461425781 520.6480102539062 322.4525451660156 502.9549560546875 322.5071716308594 498.677490234375 C 322.8690185546875 470.7265014648438 339.0670776367188 465.1825561523438 344.7574462890625 483.7142333984375 C 346.9452514648438 490.8382568359375 341.1791076660156 504.621337890625 350.8959045410156 505.5226440429688 C 356.7103271484375 506.0651245117188 364.174072265625 498.5651245117188 353.9524841308594 488.7785034179688 C 337.3273620605469 472.8641967773438 349.8377075195312 463.9721984863281 357.4424743652344 464.0175476074219 C 362.8109436035156 464.0499877929688 363.8354187011719 466.0579833984375 367.6177673339844 468.0182495117188 C 377.72998046875 473.2617797851562 380.630859375 457.1962890625 367.1149597167969 458.3331604003906 C 362.8446044921875 458.69189453125 358.4815979003906 460.79931640625 355.6963806152344 456.9066772460938 C 353.1636657714844 453.3640747070312 355.5765075683594 448.8619689941406 357.7264099121094 446.5730895996094 C 371.8670959472656 431.5081787109375 394.0479736328125 436.0038146972656 396.2525024414062 426.4461669921875 C 397.3085632324219 421.857666015625 394.296142578125 418.0406799316406 390.2571716308594 417.9152526855469 C 385.7006530761719 417.7769470214844 383.5233764648438 421.6090393066406 381.6405944824219 423.9564208984375 C 368.9072570800781 439.8056945800781 345.0413818359375 448.6177062988281 350.2206115722656 432.6364135742188 C 352.9554138183594 424.1962280273438 359.6091918945312 422.166748046875 362.9287414550781 416.2034301757812 Z" fill="#f3688e" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ],
    // );
    //       },
    //     );
    //   },
    ): Column(
      children: [
        const Text(
          'فايروس كورونا في فلسطين',
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
                      "${HomeApi.get(context).statistics["covidStatistics"]["des"]}",
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
                        "${HomeApi.get(context).statistics["covidStatistics"]["registered_cases"]}",
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
                    children:  const [
                      Text(
                        'اخر تحديث: من "duration" ساعات',
                        style: TextStyle(
                          fontFamily: 'TheSans Plain',
                          fontSize: 10,
                          color: Color(0xff6a6b6b),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(width: 24,),
                      Text(
                        'الحالات المسجلة',
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
                        'الوفيات',
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
                      SizedBox(width: width * .038,),
                      Text(
                        '${HomeApi.get(context).statistics["covidStatistics"]["deaths"]}',
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
                        'المتعافون',
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
                        '${HomeApi.get(context).statistics["covidStatistics"]['recovered']}',
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
              child: SvgPicture.string(
                '<svg viewBox="14.3 2433.8 112.3 112.7" ><path transform="translate(-269.95, 2027.28)" d="M 362.9287414550781 416.2034301757812 C 367.3232727050781 408.31005859375 350.9926452636719 401.2986145019531 351.7836608886719 416.1991577148438 C 352.02978515625 420.8439636230469 351.3565979003906 425.2012939453125 349.2445373535156 428.5254821777344 C 342.0857849121094 439.7841186523438 332.1376342773438 437.177490234375 335.9663391113281 428.3677368164062 C 337.8343811035156 424.0665893554688 336.8877258300781 418.8749389648438 331.7905883789062 419.4131164550781 C 327.2993469238281 419.886474609375 325.8709716796875 424.5464172363281 328.5951232910156 428.2035217285156 C 329.5397033691406 429.4722290039062 330.8881225585938 430.9159851074219 330.6104736328125 433.2308654785156 C 330.3874816894531 435.093994140625 328.940185546875 436.6393737792969 327.0952758789062 436.7474670410156 C 321.2218627929688 437.0932006835938 313.6676635742188 426.7964172363281 311.2190246582031 423.24951171875 C 305.0491027832031 414.3078918457031 305.9389343261719 406.2675476074219 298.3868713378906 406.4945068359375 C 293.0204467773438 406.6544494628906 291.5541381835938 411.8482360839844 291.8319091796875 414.5953979492188 C 292.6923217773438 423.0874633789062 305.8463439941406 419.9772033691406 315.3989868164062 435.0226440429688 C 324.6740417480469 449.6270751953125 310.1861877441406 454.4664001464844 296.4893798828125 443.5513916015625 C 285.108642578125 434.4822998046875 281.0717163085938 448.2892150878906 286.7894592285156 452.4823303222656 C 290.4834289550781 455.1905212402344 294.8190612792969 452.8367614746094 299.0747680664062 452.25537109375 C 318.87841796875 449.5491943359375 323.4411926269531 465.281982421875 310.0030822753906 469.6068725585938 C 305.730712890625 470.9815063476562 301.9230651855469 470.6594848632812 300.3663635253906 474.7964477539062 C 298.8475341796875 478.8339233398438 302.4027099609375 483.0680541992188 306.3512268066406 482.5103759765625 C 310.3377075195312 481.948486328125 310.8951110839844 477.8958129882812 312.6264038085938 474.413818359375 C 313.8002014160156 472.0557861328125 317.6077880859375 467.1429443359375 321.2597351074219 468.9217529296875 C 324.4151916503906 470.45849609375 322.5787353515625 477.8309326171875 321.8655700683594 480.8418579101562 C 317.980224609375 497.2380981445312 308.2697448730469 504.8330688476562 307.5545043945312 510.7337646484375 C 307.0075988769531 515.26611328125 310.0242004394531 518.6227416992188 314.0253295898438 519.1220703125 C 326.2285461425781 520.6480102539062 322.4525451660156 502.9549560546875 322.5071716308594 498.677490234375 C 322.8690185546875 470.7265014648438 339.0670776367188 465.1825561523438 344.7574462890625 483.7142333984375 C 346.9452514648438 490.8382568359375 341.1791076660156 504.621337890625 350.8959045410156 505.5226440429688 C 356.7103271484375 506.0651245117188 364.174072265625 498.5651245117188 353.9524841308594 488.7785034179688 C 337.3273620605469 472.8641967773438 349.8377075195312 463.9721984863281 357.4424743652344 464.0175476074219 C 362.8109436035156 464.0499877929688 363.8354187011719 466.0579833984375 367.6177673339844 468.0182495117188 C 377.72998046875 473.2617797851562 380.630859375 457.1962890625 367.1149597167969 458.3331604003906 C 362.8446044921875 458.69189453125 358.4815979003906 460.79931640625 355.6963806152344 456.9066772460938 C 353.1636657714844 453.3640747070312 355.5765075683594 448.8619689941406 357.7264099121094 446.5730895996094 C 371.8670959472656 431.5081787109375 394.0479736328125 436.0038146972656 396.2525024414062 426.4461669921875 C 397.3085632324219 421.857666015625 394.296142578125 418.0406799316406 390.2571716308594 417.9152526855469 C 385.7006530761719 417.7769470214844 383.5233764648438 421.6090393066406 381.6405944824219 423.9564208984375 C 368.9072570800781 439.8056945800781 345.0413818359375 448.6177062988281 350.2206115722656 432.6364135742188 C 352.9554138183594 424.1962280273438 359.6091918945312 422.166748046875 362.9287414550781 416.2034301757812 Z" fill="#f3688e" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ],
    );
  }
}
