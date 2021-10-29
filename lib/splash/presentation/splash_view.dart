
import 'package:flutter/material.dart';
import 'package:my_covid_app/splash/presentation/widgets/splash_background.dart';
import 'package:my_covid_app/splash/presentation/widgets/splash_body.dart';
import 'package:my_covid_app/states/constants.dart';
import 'package:my_covid_app/states/states.dart';



class SplashView extends StatelessWidget {
  const SplashView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kBackColor,
       body:
    //    BlocConsumer<AuthApi, ChangState>(
    //     listener: (context, state) {
    //   print(state);
    // },
    // builder: (context, state) {
    //   print(state);
    //   print(" bloc Consumer works");
    //
    //   return
       SplashBackground()
    // })
    );
  }
}