import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class Infografic extends StatefulWidget {

  @override
  _InfograficState createState() => _InfograficState();
}

class _InfograficState extends State<Infografic> {
  @override
void initState() {
  super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return
      // HomeApi.get(context).allInfographicList == null ?
      BlocConsumer<HomeApi, ChangState>(
    listener: (context, state) { print(state); },
    builder: (context, state) { print(state); print(" bloc Consumer works");
    return Container( width: 350,height: 350,
      constraints: const BoxConstraints(
          minHeight: 300,maxHeight: 400,minWidth: 300,maxWidth: 400),
      child:
      FutureBuilder<dynamic>(
      future: HomeApi.get(context).getInfographic(EndPoints.infographic),
      builder: (context, snapshot) { print(" snapshot ${HomeApi.get(context).allInfographicList}");
    return  PhotoViewGallery.builder(
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          minScale: PhotoViewComputedScale.contained,
          filterQuality: FilterQuality.medium,
          imageProvider: NetworkImage(
            '${EndPoints.storageUrl}${HomeApi.get(context).allInfographicList[index]["photo"]["path"]}',
          ),
          initialScale: PhotoViewComputedScale.contained * 0.8,
          heroAttributes: PhotoViewHeroAttributes(tag: HomeApi.get(context).allInfographicList[index]["id"]),
        );
      },
      itemCount: HomeApi.get(context).allInfographicList.length,
      loadingBuilder: (context, event) => const Center(
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(
          ),
        ),
      ),
    );
    }));

      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container( color: Colors.white,
      //           child: PhotoView(
      //             imageProvider:
      //             NetworkImage(
      //               '${EndPoints.EndPoints.storageUrl}${HomeApi.get(context).allInfographicList[index]?["photo"]?["path"]}' ,
      //             ),),
      //           margin: const EdgeInsets.all(6),
      //           width: MediaQuery.of(context).size.width,
      //           // decoration:  BoxDecoration(image: DecorationImage(
      //           //   fit: BoxFit.fitWidth,
      //             // image:
      //             // NetworkImage(
      //             //   '${EndPoints.EndPoints.storageUrl}${HomeApi.get(context).allInfographicList[index]?["photo"]?["path"]}' ,
      //             // ),
      //           // ), ),
      //         ),],
      // );





      // }),
    // );
  // });
});
    // : PhotoViewGallery.builder(
    //   scrollPhysics: const BouncingScrollPhysics(),
    //   builder: (BuildContext context, int index) {
    //     return PhotoViewGalleryPageOptions(
    //       minScale: PhotoViewComputedScale.contained,
    //       filterQuality: FilterQuality.medium,
    //       imageProvider: NetworkImage(
    //         '$EndPoints.storageUrl${HomeApi.get(context).allInfographicList[index]["photo"]["path"]}',
    //       ),
    //       initialScale: PhotoViewComputedScale.contained * 0.8,
    //       heroAttributes: PhotoViewHeroAttributes(tag: HomeApi.get(context).allInfographicList[index]["id"]),
    //     );
    //   },
    //   itemCount: HomeApi.get(context).allInfographicList.length,
    //   loadingBuilder: (context, event) => const Center(
    //     child: SizedBox(
    //       width: 20.0,
    //       height: 20.0,
    //       child: CircularProgressIndicator(
    //       ),
    //     ),
    //   ),
    // );
  }}