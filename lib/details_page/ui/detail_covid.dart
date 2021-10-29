import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';

class DetailCovid extends StatefulWidget {
  @override
  State<DetailCovid> createState() => _DetailCovidState();
}

class _DetailCovidState extends State<DetailCovid> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox( height: 60,
            child: SvgPicture.asset("assets/images/svg/HomeApi.get(context).allPostsList[0]_home.svg")),
        const SizedBox(height: 12,),
        Container( height: 250,width: 250, color: Colors.white,
          child:
          Stack(children: [
            CircleAvatar( radius: 120,
              backgroundImage: NetworkImage(
                '${HomeApi.get(context).storageUrl}${HomeApi.get(context).allPostsList[0]["photo"]["path"]}',
              ),
            ),
            Positioned(
              bottom: 0,left: 0,
              child: CircleAvatar( radius: 60,
                backgroundImage: NetworkImage(
                  '$HomeApi.get(context).storageUrl${HomeApi.get(context).allPostsList[0]["in_photo"]["path"]}',
                ),
              ),),
            Positioned(
              child: Image.asset("assets/images/HomeApi.get(context).allPostsList[0]_vires_top_circles.png"),
             left: 0, top: 0,right: 0,width: 320,),
          ]),
            ),

        TextButton(onPressed: () {
        }, child: Text(HomeApi.get(context).allPostsList[0]["title"]??"")),

        Text(HomeApi.get(context).allPostsList[0]["sub_title"].replaceAll(RegExp(
            ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' ')??""),

        Text(HomeApi.get(context).allPostsList[0]["short_text"].replaceAll(RegExp(
            ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' ')??""),
      ],)
        );

    }
}

    // .substring(0,167)



