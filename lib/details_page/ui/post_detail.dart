import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';


class PostDetail extends StatefulWidget {
      PostDetail({this.data });
      var data;
      // int i ;

      @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  String photoPath,title,subTitle,shortText,text;  var info , storageUrl;
@override
void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    photoPath = widget.data['photo']['path'];
    title = widget.data['title'];
    subTitle = widget.data['sub_title'];
    shortText = widget.data['short_text'];
    text = widget.data['text'];
    info = HomeApi.get(context).allInfographicList;
    storageUrl = HomeApi.get(context).storageUrl;
    return
      Scrollbar(
        child: SingleChildScrollView(
            child:
    Column( children: [
    title != null ?
    Positioned(
    child: Text(
    title,
    style: const TextStyle(
    fontFamily: 'TheSans',
    fontSize: 18,
    color: Color(0xff000000),
    fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.end,
    ),
    ):const SizedBox(),
    subTitle != null?
    Text(
    subTitle,
    style: const TextStyle(
    fontFamily: 'TheSans Plain',
    fontSize: 14,
    color: Color(0xff2f3334),
    ),
    textAlign: TextAlign.right,
    ):const SizedBox(),
    photoPath != null?
    Container(child: Image.network('${HomeApi.get(context).storageUrl}$photoPath',
    fit: BoxFit.fill,),
    height: 200,width: MediaQuery.of(context).size.width,):const SizedBox(),
    // shortText != null ?
    // Text( shortText,
    // style: const TextStyle(
    // fontFamily: 'TheSans Plain',
    // fontSize: 15,
    // color: Color(0xff7d7d7d),
    // height: 2,
    // ),
    // textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
    // textAlign: TextAlign.right,
    // ):const SizedBox(),
    text != null ?
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
    child: Scrollbar(
    child: SingleChildScrollView(
    child: Html( data: text, ),
    ),
    ),
    ):const SizedBox(),
    Expanded(child: GridView.builder(
    shrinkWrap: true,
    physics: const ScrollPhysics(),
    scrollDirection: Axis.horizontal,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    ),
    itemCount: HomeApi.get(context).allInfographicList.length,
    itemBuilder: (BuildContext context, int index) {
    return Card(
    color: Colors.amber,
    child: Image.network(
    "$storageUrl${info[index]["photo"]["path"]}"
    ),
    );
    }
    ),
    ),
    ])
    ));
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
