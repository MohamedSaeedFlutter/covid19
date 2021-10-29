import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';


class AllSehiaStack extends StatefulWidget {
  const AllSehiaStack({Key key}) : super(key: key);

  @override
  _AllSehiaStackState createState() => _AllSehiaStackState();
}

class _AllSehiaStackState extends State<AllSehiaStack> {
  var allSehiaList = []; var storageUrl;
  @override
  void initState() {
    allSehiaList =HomeApi.get(context).allSehialist;
    storageUrl = HomeApi.get(context).storageUrl;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text(
          'مواضيع صحية',
          style: TextStyle(
            fontFamily: 'TheSans',
            fontSize: 22,
            color: Color(0xff343233),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
   Expanded(
     child: ListView.builder(
  physics: const ScrollPhysics(),
  shrinkWrap: true,
scrollDirection: Axis.vertical,
  itemCount:allSehiaList?.length,
  itemBuilder: (context, index) {
  return
          Padding(
          padding: const EdgeInsets.all(14),
          child: InkWell(
            onTap: () {
              HomeApi.get(context).setPostsDetail(s:allSehiaList[index]);
Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(),));
            },
              child:
              Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
              SizedBox( width: width * .45,
              child: Text(
              allSehiaList[index]["title"],
              style: const TextStyle(
              fontFamily: 'TheSans',
              fontSize: 14,
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
              ),
              ),
              Expanded(
              child: Stack(
              alignment: Alignment.center,
              children:[
              Image.network(
              '$storageUrl${allSehiaList[index]['photo']['path']}',
              ),

              Positioned( top: 0,left: 0,
              child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.share),),
              ),
              )],
              ),
              )
              ]
              )

          ));
  },
),
   )]);
       //  :const Center(child: Text("جارى جلب البيانات"),)
       // :const Center(child: Text("جارى جلب البيانات"),))]);
        // },
//   );
//         },
// // )
// ),
//       ],
//     );
  }
}
