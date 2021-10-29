import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';


class TopHomeCont extends StatefulWidget {
  @override
  State<TopHomeCont> createState() => _TopHomeContState();
}

class _TopHomeContState extends State<TopHomeCont> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<HomeApi, ChangState>(
    listener: (context, state) {
      print(state);
    },
    builder: (context, state) {
    print(state);
    print(" bloc Consumer works");
    return
    FutureBuilder<dynamic>(
    future: HomeApi.get(context).getStaticPages(EndPoints.staticPages),
    builder: (context, snapshot) {
     //  print("snapshot.data........${snapshot.data}");
     //   if (snapshot.connectionState != ConnectionState.done) {print("bad connection state top home");}
     // if (!snapshot.hasData) {print("no data top home");}
      return Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,
              child: SvgPicture.asset("assets/images/svg/covid_home.svg")),
          const SizedBox(height: 12,),
          Container(height: 275, width: 275, color: Colors.white,
            child:
            Stack(fit: StackFit.expand,
              children: [
                Expanded(
                  child: Stack(children: [
                    Positioned(
                      child: CircleAvatar(radius: 120,
                        backgroundImage: NetworkImage(
                          '${HomeApi.get(context).storageUrl}${HomeApi.get(context).staticPagesList[0]["photo"]["path"]}',
                        ),
                      ), right: 16,
                    ),
                    (HomeApi
                        .get(context)
                        .staticPagesList[0]["in_photo"]) != null ?
                    Positioned(
                      bottom: 0, left: 0,
                      child: CircleAvatar(radius: 60,
                        backgroundImage: NetworkImage(
                          '${HomeApi.get(context).storageUrl}${HomeApi.get(context).staticPagesList[0]["in_photo"]["path"]}',
                        ),
                      ),) : const SizedBox(),
                  ]),
                ),
                Positioned(
                  child: Image.asset(
                      "assets/images/covid_vires_top_circles.png"),
                  top: 0, right: -25, width: 360,),
              ],
            ),
          ),
          (HomeApi
              .get(context)
              .staticPagesList[0]["name"]) != null ?
          TextButton(onPressed: () {}, child: Text(HomeApi
              .get(context)
              .staticPagesList[0]["name"] ?? "")) : const SizedBox(),
          (HomeApi
              .get(context)
              .staticPagesList[0]["des"]) != null
              ?
          Text(HomeApi
              .get(context)
              .staticPagesList[0]["des"].replaceAll(RegExp(
              ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' ') ?? "")
              : const SizedBox(),
          (HomeApi
              .get(context)
              .staticPagesList[0]["text"]) != null
              ?
          Text(HomeApi
              .get(context)
              .staticPagesList[0]["text"].toString()
              .substring(1, 167)
              .replaceAll(RegExp(
              ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' ') ?? "")
              : const SizedBox(),
        ],);
    });
    });
    }
}



