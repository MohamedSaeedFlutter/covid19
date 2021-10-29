import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';


class PostDetail extends StatefulWidget {


      @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
@override
void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 26),
          child: Column( children: [
            HomeApi.get(context).postDetail['title'] != null ?
          Positioned(
          child: Text(
            HomeApi.get(context).postDetail['title'],
          style: const TextStyle(
          fontFamily: 'TheSans',
          fontSize: 18,
          color: Color(0xff000000),
          fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.end,
          ),
          )
              :const SizedBox(),
            HomeApi.get(context).postDetail['sub_title'] != null?
          Text(
            HomeApi.get(context).postDetail['sub_title'],
          style: const TextStyle(
          fontFamily: 'TheSans Plain',
          fontSize: 14,
          color: Color(0xff2f3334),
          ),
          textAlign: TextAlign.right,
          )
              :const SizedBox(),
          HomeApi.get(context).postDetail['photo']['path'] != null?
          Image.network('${HomeApi.get(context).storageUrl}${HomeApi.get(context).postDetail['photo']['path']}',
          fit: BoxFit.fill,)
              :const SizedBox(),
          //   HomeApi.get(context).postDetail['short_text'] != null ?
          // Text( HomeApi.get(context).postDetail['short_text'],
          // style: const TextStyle(
          // fontFamily: 'TheSans Plain',
          // fontSize: 15,
          // color: Color(0xff7d7d7d),
          // height: 2,
          // ),
          // textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
          // textAlign: TextAlign.right,
          // ):const SizedBox(),

          Expanded(
            child: ListView( shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
             children: [
               HomeApi.get(context).postDetail['text'] != null ?
               Html( data: HomeApi.get(context).postDetail['text'],):const SizedBox(),
              // Expanded(child: GridView.builder(
              //     shrinkWrap: true,
              //     physics: const ScrollPhysics(),
              //     scrollDirection: Axis.horizontal,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //     ),
              //     itemCount: HomeApi.get(context).allInfographicList.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return
              //         HomeApi.get(context).allInfographicList[index]["photo"]["path"] != null ?
              //         Card(
              //           color: Colors.amber,
              //           child: Image.network(
              //         "${HomeApi.get(context).storageUrl}${HomeApi.get(context).allInfographicList[index]["photo"]["path"]}"
              //           ),
              //         ):const SizedBox();
              //     }
              // ),
              // )
                  ]
            ),
          ),
          ]),
        ),
      );
        }
        }

Widget myAlbum(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child:
    GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: HomeApi.get(context).allInfographicList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Container(child: Image.network(
              "${HomeApi.get(context).storageUrl}${HomeApi.get(context).allInfographicList[index]["photo"]["path"]}"
            )),
          );
        }
    ),
  );
}
