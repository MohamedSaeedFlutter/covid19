import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({Key key}) : super(key: key);

  @override
  _HomeNewsState createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text(
          'الأخـــــــبار',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 22,
            color: Color(0xff343233),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
        // HomeApi.get(context).allNews == null ?
        BlocConsumer<HomeApi, ChangState>(
        listener: (context, state) { print(state); },
        builder: (context, state) { print(state); print(" bloc Consumer works");
        return FutureBuilder<dynamic>(
        future: HomeApi.get(context).getNews(EndPoints.news),
        builder: (context, snapshot) {
          return ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: HomeApi.get(context).allNews.length,
            itemBuilder: (context, index) {
              return (index < 1)?
              Padding(
                padding: const EdgeInsets.all(14),
                child: InkWell(
                  onTap: () {
                      HomeApi.get(context).setPostsDetail(s:HomeApi.get(context).allNews[index]);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(),));
                    },
                  child: Column(
                    children: [
                      Image.network('${HomeApi.get(context).storageUrl}${HomeApi.get(context).allNews[index]['photo']['path']}'
                      ),
                      Text(
                        "${HomeApi.get(context).allNews[index]['title']}",
                        style: const TextStyle(
                          fontFamily: 'TheSans',
                          fontSize: 18,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ):const SizedBox();
            },
          );
        },
  );
        },)

        //     :ListView.builder(
        //   physics: const ScrollPhysics(),
        //   shrinkWrap: true,
        //   scrollDirection: Axis.vertical,
        //   itemCount: HomeApi.get(context).allNews.length,
        //   itemBuilder: (context, index) {
        //     String photoPath =
        //     HomeApi.get(context).allNews[index]['photo']['path'];
        //     String title = HomeApi.get(context).allNews[index]['title'];
        //     return (index < 1)?
        //     Padding(
        //       padding: const EdgeInsets.all(14),
        //       child: Column(
        //         children: [
        //           Image.network('$HomeApi.get(context).storageUrl$photoPath'
        //           ),
        //           Text(
        //             title,
        //             style: const TextStyle(
        //               fontFamily: 'TheSans',
        //               fontSize: 18,
        //               color: Color(0xff000000),
        //               fontWeight: FontWeight.w700,
        //             ),
        //             textAlign: TextAlign.start,
        //           ),
        //         ],
        //       ),
        //     ):const SizedBox();
        //   },
        // )
      ],
    );
  }
}
