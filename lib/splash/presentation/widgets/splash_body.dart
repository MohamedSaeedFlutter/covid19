
import 'package:flutter/material.dart';
import 'package:my_covid_app/home_page/ui/b_n_b.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController animationController ;
  Animation<double> fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 599));
    fadingAnimation =
        Tween<double>(begin: .3, end: 1).animate(animationController);
    animationController?.repeat(reverse: true);
    // goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // SizeConfig().init(context);
    return Column(
      children: [




        SizedBox( height: height * .25,
            child: Image.asset("assets/images/svg/splash_background_top.svg")),
        SizedBox( height: height * .25,
            child: Image.asset("assets/images/svg/covid_splash.svg")),
        SizedBox( height: height * .40,
          child: const Text(
            'جميع الحقوق محفوظة لموقع كوفيد - 19  @ لسنة 2021\nتصميم وتطوير شركة وصلة تكنولوجي ',
            style: TextStyle(
              fontFamily: 'TheSans Plain',
              fontSize: 10,
              color: Color(0xffa5a5a5),
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void goToNextView() {
    Future.delayed( const Duration(milliseconds: 1800), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          const BNB(),
      ));
      // Get.to(() => OnBoardingView(), transition: Transition.fade);
    // });
  });
}
}
