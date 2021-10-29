import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/states/constants.dart';

class Appbar extends StatelessWidget  with PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    return AppBar(

        backgroundColor: kMainColor,
        leading: IconButton(
          icon: const Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),

        elevation: 0.0,
        actions:  <Widget>[
          IconButton( icon : const Icon(Icons.menu),
          onPressed: () { HomeApi.get(context).showDrawerState();
//     showModalBottomSheet<void>(
// isScrollControlled: true,
//     context: context,
//     builder: (BuildContext context) {
//     return DraggableScrollableSheet(
//     expand: true,
//     initialChildSize: .97,
//     maxChildSize: 1.0,
//     minChildSize: .95,
//     builder: (context, scrollController) {
//     return
//       Drawer0();
//           });
// });
          }),
        ]);


  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}