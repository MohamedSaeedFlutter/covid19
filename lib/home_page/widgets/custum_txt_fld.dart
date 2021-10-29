import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';

class CustumTextField2 extends StatelessWidget {
   CustumTextField2({ this.hintTxt, this.iconPath});
String hintTxt = "";
String iconPath = "";

  @override
  Widget build(BuildContext context) {
    TextInputType txtType = TextInputType.text;
    final TextEditingController nameController = TextEditingController();
    return TextFormField(
      validator: (value) => value = hintTxt,
      onChanged: (value) =>  HomeApi.get(context).setSearchField(value) ,
      decoration:
      InputDecoration(labelText: hintTxt,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.blueAccent)
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
        fillColor: Colors.white,
        prefixIcon: SvgPicture.asset(iconPath,
          height: 20,width: 20,),
        hintText: hintTxt,
      ),
      keyboardType: txtType,
      style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w700),

    );
  }
}
