import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';


class CovidIntroDetail extends StatefulWidget {
  @override
  State<CovidIntroDetail> createState() => _CovidIntroDetailState();
}

class _CovidIntroDetailState extends State<CovidIntroDetail> {
  var storageUrl;  var covid;
  @override
  void initState() {
 storageUrl = HomeApi.get(context).storageUrl;
 HomeApi.get(context).allPostsList[0] != null?
 covid = HomeApi.get(context).allPostsList[0] : covid = null;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child:
  Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,
              child: SvgPicture.asset("assets/images/svg/covid_home.svg")),
          const SizedBox(height: 12,),
          Container(height: 100, color: Colors.white,
            child: Image.network('$storageUrl${covid?.photo?.path}', fit: BoxFit.fill,),
          ),
          TextButton(onPressed: () {
          }, child: Text(covid?.name)),
          Text(covid?.text?.replaceAll(RegExp(
              ">|&nbsp|strong|&|squo|b|p|/|;|&mdash|&ndash|:|_|<"), ' ')),
        ],
      )
    // })
   );



  }
}


