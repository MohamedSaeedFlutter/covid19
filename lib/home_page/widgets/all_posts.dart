// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:my_covid_app/home_page/logic/fetch_api.dart';
// // import 'package:my_covid_app/models/posts.dart';
// // import 'package:my_covid_app/states/states.dart';
// //
// // class AllPosts extends StatefulWidget {
// //   const AllPosts({Key? key}) : super(key: key);
// //
// //   @override
// //   _AllPostsState createState() => _AllPostsState();
// // }
// //
// // class _AllPostsState extends State<AllPosts> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         const Text(
// //           'مقـــــالات',
// //           style: TextStyle(
// //             fontFamily: 'TheSans',
// //             fontSize: 22,
// //             color: Color(0xff343233),
// //             fontWeight: FontWeight.w700,
// //           ),
// //           textAlign: TextAlign.right,
// //         ),
//         Expanded(child: BlocConsumer<HomeApi, ChangState>(
//         listener: (context, state) { print(state); },
//         builder: (context, state) { print(state); print(" bloc Consumer works");
//         return FutureBuilder<PostsData>(
//         future: HomeApi.get(context)?.getPostsData(),
//         builder: (context, snapshot) {
//           var snap = snapshot?.data;
//           HomeApi.get(context).setPosts(snapshot?.data?.posts?.data);
//           return
//           (snapshot.connectionState == ConnectionState.done )? (snapshot.hasData)?
//  ListView.builder(
//   physics: ScrollPhysics(),
//   shrinkWrap: true,
// scrollDirection: Axis.vertical,
//   itemCount: HomeApi.get(context).allPostsList.length,
//   // snap?.posts?.data?.length,
//   itemBuilder: (context, index) {  print("88888${snap.posts.data.length}");
//   // var photoLink = storageUrl + HomeApi.get(context).allPostsList[index].photo.path;
//    return
//     Padding(
//       padding: const EdgeInsets.all(14),
//       child: Column(
//         children: [
//           Image.network(HomeApi.get(context).storageUrl + HomeApi.get(context).allPostsList[index]?.photo?.path),
// Row( mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//         Text(
//           HomeApi.get(context).allPostsList[index]?.category?.name,
//       style: const TextStyle(
//       fontFamily: 'TheSans Plain',
//       fontSize: 16,
//       color: Color(0xffcb2727),
//         fontWeight: FontWeight.w500
//       ),
//       textAlign: TextAlign.start,
//       ),
//   ],
// ),
//   Text(
//     HomeApi.get(context).allPostsList[index]?.title,
//   style: const TextStyle(
//   fontFamily: 'TheSans',
//   fontSize: 18,
//   color: Color(0xff000000),
//       fontWeight: FontWeight.w700,
//       ),
//       textAlign: TextAlign.start,
//       ),
//       Text( HomeApi.get(context).allPostsList[index].shortText.toString()
//           .replaceAll(RegExp(">|&nbsp|b|p|/|;|&mdash|&ndash|:|_|r|<"), ' ')
//         ,style: const TextStyle(
//       fontFamily: 'TheSans Plain',
//       fontSize: 14,
//       color: Color(0xff7d7d7d),
//       height: 1.5333333333333334,
//       ),
//       textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
//       textAlign: TextAlign.right,
//       ),
//         ],
//       ),
//     );
//
//   },
// ):const Center(child: Text("جارى جلب البيانات"),)
//               :const Center(child: Text("جارى جلب البيانات"),);
//         },);
//         },)),
//       ],
//     );
// //   }
// // }
