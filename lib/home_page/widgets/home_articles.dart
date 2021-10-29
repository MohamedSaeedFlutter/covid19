import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';

class HomeArticles extends StatefulWidget {
  const HomeArticles({Key key}) : super(key: key);

  @override
  _HomeArticlesState createState() => _HomeArticlesState();
}

class _HomeArticlesState extends State<HomeArticles> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'مقـــــالات',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 22,
            color: Color(0xff343233),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
        // HomeApi.get(context).allArticles == null ?
        // BlocConsumer<HomeApi, ChangState>(
        // listener: (context, state) { print(state); },
        // builder: (context, state) { print(state); print(" bloc Consumer works");
        // return FutureBuilder<dynamic>(
        // future: HomeApi.get(context).getArticles(EndPoints.articles),
        // builder: (context, snapshot) {
        //   return
          // (snapshot.connectionState == ConnectionState.done )? (snapshot.hasData)?
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: HomeApi.get(context).allArticles.length,
            itemBuilder: (context, index) {
              return (index < 2)?
              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Image.network(
'${HomeApi.get(context).storageUrl}${HomeApi.get(context).allArticles[index]['photo']['path']}',
                    ),
                    InkWell(
                      onTap:() {
HomeApi.get(context).setPostsDetail(s:HomeApi.get(context).allArticles[index]);
Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(),));
                      },
                      child: Row( mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${HomeApi.get(context).allArticles[index]['category']['name']}",
                            style: const TextStyle(
                                fontFamily: 'TheSans Plain',
                                fontSize: 16,
                                color: Color(0xffcb2727),
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "${HomeApi.get(context).allArticles[index]['title']}",
                      style: const TextStyle(
                        fontFamily: 'TheSans',
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    // Html(data: shortText),
                    // Text( "${HomeApi.get(context).allArticles[index]['shortText']}"
                    //     .replaceAll(RegExp(">|&nbsp|b|p|/|;|&mdash|&ndash|:|_|r|<"), ' ')
                    //   ,style: const TextStyle(
                    //     fontFamily: 'TheSans Plain',
                    //     fontSize: 14,
                    //     color: Color(0xff7d7d7d),
                    //     height: 1.5333333333333334,
                    //   ),
                    //   textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                    //   textAlign: TextAlign.right,
                    // ),
                  ],
                ),
              ):const SizedBox();
            },
          )
 // : const SizedBox():const SizedBox();

        // },
  // );
        // },)
            // : const SizedBox()
      ],
    );
  }
}
