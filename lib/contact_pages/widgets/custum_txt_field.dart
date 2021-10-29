import 'package:flutter/material.dart';

class CustumTextField0 extends StatelessWidget {
  CustumTextField0({ this.hintTxt, });
  String hintTxt = "";

  @override
  Widget build(BuildContext context) {
    TextInputType txtType ;
    var vald;
    final TextEditingController nameController = TextEditingController();
    vald = hintTxt;
    return TextFormField(
      textDirection: TextDirection.rtl,
      validator: (value) {
        if(value.isEmpty){
          return vald;
        }return null;
      },
      controller: nameController,
      decoration:
      InputDecoration(labelText: hintTxt,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        enabledBorder: OutlineInputBorder(
          gapPadding: 6,
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.grey)
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        fillColor: Colors.white,
        hintText: hintTxt,
      ),
      keyboardType: TextInputType.text,
      style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w600),

    );
  }
}









// import 'package:flutter/material.dart';
//
// class CustumTextField extends StatelessWidget {
//    CustumTextField({this.vald, this.numberLines , @required this.hintTxt,});
// String hintTxt = "";
// String vald ;
// int numberLines = 1;
//   @override
//   Widget build(BuildContext context) {
//     vald = hintTxt;
//     return TextFormField(
//       maxLines: numberLines,
//       decoration:
//       InputDecoration(
//         labelText: hintTxt,
//         hintTextDirection: TextDirection.rtl,
//         floatingLabelBehavior: FloatingLabelBehavior.never,
//         filled: true,
//         enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(28),
//             borderSide: const BorderSide(color: Colors.grey)
//         ),
//         focusedBorder:  OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: const BorderSide(color: Colors.grey),
//         ),
//         fillColor: Colors.white,
//         // hintText: hintTxt,
//       ),
//       keyboardType: TextInputType.text,
//       style: const TextStyle(
//           fontSize: 12,
//           color: Colors.black,
//           fontWeight: FontWeight.w700),
//           textAlign: TextAlign.right,
//     );
//   }
// }
