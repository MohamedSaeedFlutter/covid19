import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';

class DropDownBtn extends StatefulWidget {

  @override
  _DropDownBtnState createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String dropdownValue = "مهمه";
  int listIndex  = 4;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField( hint: const Text("مهمه"),
      decoration:  InputDecoration(
        border: OutlineInputBorder( borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: Colors.grey)),
      ),
      value: HomeApi.get(context).dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_circle_outlined),
      iconSize: 18,
      elevation: 18,
      style:  const TextStyle(color: Colors.black, fontSize: 12,
          fontWeight: FontWeight.w400,),
      onTap: () {

      },
      onChanged: (value) => HomeApi.get(context).dropButton(value),
      items: ["مهمه","غير مهم"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}
