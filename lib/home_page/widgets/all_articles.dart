import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:my_covid_app/details_page/ui/post_detail.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/home_page/widgets/share_widget.dart';


class AllArticlesStack extends StatefulWidget {
  const AllArticlesStack({Key key}) : super(key: key);

  @override
  _AllArticlesStackState createState() => _AllArticlesStackState();
}

class _AllArticlesStackState extends State<AllArticlesStack> {
  var allArticlesList = []; var storageUrl;
  @override
  void initState() {
    allArticlesList =HomeApi.get(context).allArticles;
    storageUrl = HomeApi.get(context).storageUrl;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text(
          'المقالات',
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
  itemCount:allArticlesList?.length,
  itemBuilder: (context, index) {
  return
          Padding(
          padding: const EdgeInsets.all(14),
          child: InkWell(
            onTap: () {
              HomeApi.get(context).setPostsDetail(s:allArticlesList[index]);
Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(),));
            },
              child:
              Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
              SizedBox( width: width * .45,
              child: Text(
              allArticlesList[index]["title"],
              style: const TextStyle(
              fontFamily: 'TheSans',
              fontSize: 14,
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
              ),
              ),
                allArticlesList[index]['photo']['path'] != null ?
              Expanded(
              child: Stack(
              alignment: Alignment.center,
              children:[
                CachedNetworkImage(
                  imageUrl: '$storageUrl${allArticlesList[index]['photo']['path']}',
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              //   Image.network(
              // '$storageUrl${allArticlesList[index]['photo']['path']}',
              // ),

              Positioned( top: 0,left: 0,
              child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: IconButton(
              onPressed: () async {
                var file = await DefaultCacheManager().getSingleFile(
                    '$storageUrl${allArticlesList[index]['photo']['path']}');
                ShareLogic.onShare(context,
                    allArticlesList[index]["title"],
                    imagePaths:  [file.path]);
              },
              icon: const Icon(Icons.share),),
              ),
              )],
              ),
              ) : const Expanded(child: SizedBox())
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
