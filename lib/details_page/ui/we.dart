import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';


class MnNahno extends StatefulWidget {
  @override
  State<MnNahno> createState() => _MnNahnoState();
}

class _MnNahnoState extends State<MnNahno> {
  var data;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(HomeApi.get(context).staticPagesList[1]["name"],style: const TextStyle(fontWeight: FontWeight.w600,
         fontSize: 20),),
     // SizedBox( height: 60,
     //     child: Image.network(HomeApi.get(context).storageUrl +
     //                                                       data.photo.path)),
     const SizedBox(height: 10,),
     Container( height: 70, color: Colors.white,
       child:Image.network(
"${HomeApi.get(context).storageUrl}${HomeApi.get(context).staticPagesList[1]["photo"]["path"]}"
         ,fit: BoxFit.fill,),
     ),
     // TextButton(onPressed: () {
     //
     // }, child:Text(data.name)),
     // Text(data.des),


     Scrollbar(
       child: SingleChildScrollView(child: 
       Html( data: HomeApi.get(context).staticPagesList[1]["text"])),
     ),
      ],);

    // });
    // })
    // );



  }
}


