import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/widgets/all_sehia.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';

class SehiaField extends StatefulWidget {
  const SehiaField({Key key}) : super(key: key);

  @override
  _SehiaFieldState createState() => _SehiaFieldState();
}
class _SehiaFieldState extends State<SehiaField> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //  return BlocConsumer<HomeApi, ChangState>(
    // listener: (context, state) {
    // print(state);
    // },
    // builder: (context, state) {
    // return FutureBuilder<dynamic>(
    // future: HomeApi.get(context).getSehia(EndPoints.healthTopics),
    // builder: (context, snapshot) {
    return  Column(children: [
      TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
          builder: (context) => const
          Scaffold(
              body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: AllSehiaStack(),
          ))
          ,)
        );},
        child: const Positioned(top: 6,
          child: Text(
            'مواضيع صحية',
            style: TextStyle(
              fontFamily: 'TheSans',
              fontSize: 22,
              color: Color(0xff343233),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      Image.asset("assets/images/health_topics_home_image.png",
        height: 250,width: 250,),
      ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: HomeApi.get(context).allSehialist.length,
          itemBuilder: (context, index) {
            print("allHomeApi.get(context).allSehialist88888......${HomeApi.get(context).allSehialist.length}");
            return (
                (index < 2) ?
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      HomeApi.get(context).setPostsDetail(s:HomeApi.get(context).allSehialist[index]);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(),));
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            HomeApi.get(context).allSehialist[index]['title'],
                            style: const TextStyle(
                              fontFamily: 'TheSans',
                              fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        // const SizedBox(width: 12),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            '${HomeApi.get(context).storageUrl}${HomeApi.get(context).allSehialist[index]['photo']['path']}',
                          ),
                          radius: 38,
                        ),
                        const SizedBox(width: 12),
                      ], mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                ) :const SizedBox());
          })
    ],);
    // });
    // });
  }
}
