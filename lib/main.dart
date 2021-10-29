import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_covid_app/home_page/logic/fetch_api.dart';
import 'package:my_covid_app/splash/presentation/splash_view.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      BlocProvider(
        create: (BuildContext context)  => HomeApi(),
        child:  MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashView(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     double topMarginHeight = MediaQuery.of(context).padding.top;
//     double cAppbarHeight = AppBar().preferredSize.height;
// HomeApi.get(context).setHeights(apbar:cAppbarHeight,tpbar: topMarginHeight);
//     return Scaffold(
//       body: const HomeScreen());
//   }
// }