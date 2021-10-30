import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:my_covid_app/states/end_points.dart';
import 'package:my_covid_app/states/states.dart';

class HomeApi extends Cubit<ChangState> {
  HomeApi() : super(InitialState());
  static HomeApi get(context) => BlocProvider.of(context);

  var dropdownValue; dropButton (Object newValue) { dropdownValue = newValue;}
  //Pages..............................................................
  var staticPagesList = []; setStaticPages (var s) async {  staticPagesList = s ; }
  var QuestionList = []; setQuestionList (var s) async {
         QuestionList = s ;
         emit(SetQuestionListState());
  }
  var specificQuestion = []; setSpecificQuestion(var s) async {specificQuestion = s; }
  var statistics;  setstatistics (var s) async { statistics = s ; }
  var motamin;  setMotamin (var s) async { motamin = s ;}
  var allPostsList = [];  setPosts (var s) async { allPostsList = s ; }
  var allSehialist ;  setSehiaList (var s) async { allSehialist = s ; }
  var allArticles = [];  setArticles (var s) async { allArticles = s ; }
  var allNews = [];  setNews (var s) async { allNews = s ; }
  var postDetail ; setPostsDetail ({var s}) async { postDetail = s ; emit(PostDetailState());}
  var allInfographicList = [];  setInfographicList (var s) async { allInfographicList = s ;}
  var searchField; setSearchField(var s){searchField = s; emit(SetSearchFieldState());}

  bool drawerstate = false;
  var drawerval ;
  setDrawer(var x){emit(SetDrawerState()); drawerval = x; drawerstate = true;
  print("ok22222");
  }
  bool isShare = false;
  setShareDialoge(){  isShare = true;  emit(ShareIconState()); }
  var appbar ,topbar ,bnb;
  getRestHeight () {return appbar + topbar + bnb;}
  getTopHeight () {return appbar + topbar ;}
  setHeights ({var apbar ,var tpbar ,var bnb }){
    appbar = apbar ;
    topbar = tpbar ;
    bnb = bnb ;
  }

String generalSubs = "https://www.covidfacts.ps/ar/api/getAllCategories";
String storageUrl= 'https://www.covidfacts.ps/thumb/photo/0/0/';
String statisURL = "https://www.covidfacts.ps/ar/api/getCovidStatistics?fbclid=IwAR12i6mxT_-oDyXgO34-B9LDFAyrTv3Kyiq5XcpNPC9vka5phrpFMf5vsmk";
String MotaminURL = "https://www.covidfacts.ps/ar/api/"
    "getCovidStatisticsVaccine?fbclid=IwAR1dneJCCfbIOLcXEGGVOi5xxvY0jxAHK0eQCbvy8wBBUZyjp3TuFH7-x-0";
String postsData =
    "https://www.covidfacts.ps/ar/api/classPost/4/30";
String question =
    "https://www.covidfacts.ps/ar/api/getCovidDatabaseSettings?fbclid=IwAR0Eqn8baHcVu4Yo0EMiOcUktiMuk6gc6H7JY2QZLCEXSjMrljLRdSfIBp4";
String staticPages =
    "https://www.covidfacts.ps/ar/api/getAllStaticPage?fbclid=IwAR0eEaCski48i0SdjcqN4zMvnnjZtllcnOCVCW3ZB3sVp5fUnWsuL4Up_4o";


  Future<dynamic> getSpecificQuestion(String x) async {
   var body , output;
  var url = Uri.parse(
      EndPoints.basicUrl + EndPoints.covidDatabaseSettingsSearch + x);
  http.Response response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  });
  if (response.statusCode == 200) {
    body = json.decode(response.body);
    print("covidcovidcovid11111111body${body}");
  } else if (response.statusCode == 404) {
    print("not covidcovidcovid foundnot foundnot found");
  } else if (response.statusCode == 500) {
    print(
        "server Subjects not responding.server not responding.server not responding.");
  } else {
    print(
        "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
  }
   if(body == null){
     return null;
   }
   QuestionList = [];
   return setQuestionList(body["questionsData"]["data"]);
  }

 getQuestion(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setQuestionList(body["questionsData"]["data"]);
  }

 getStaticPages(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setStaticPages(body["pages"]);
  }

 getStatistics(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setstatistics(body);
  }

 getSehia(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setSehiaList(body["posts"]["data"]);
  }

getMotamin(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setMotamin(body);
  }

getNews(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setNews(body['posts']['data']);
  }

getInfographic(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setInfographicList(body["posts"]["data"]);
  }

getArticles(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setArticles(body['posts']['data']);
  }

getPosts(String x) async {
    var body ;
    var url = Uri.parse(EndPoints.basicUrl + x);
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body${body}");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
    setPosts(body['posts']['data']);
  }


  int a = 4;
  sendIstfsar(List<dynamic> data) async {
   var body;
    var url = Uri.parse(
        '${EndPoints.basicUrl}/saveMessageFromPage/${data[a]["id"]}'
            '${data[a]["fields"].map(
              (index, e) => MapEntry(index,
              '${index == 0 ? '?' : '&'}${e.key}=${e.value}'),
        ).values.join('')}'
    );
    print("url.......$url");
    http.Response response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
    });
    if (response.statusCode == 200) {
      body = await json.decode(response.body);
      print("covidcovidcovid11111111body$body");
    } else if (response.statusCode == 404) {
      print("not covidcovidcovid foundnot foundnot found");
    } else if (response.statusCode == 500) {
      print(
          "server Subjects not responding.server not responding.server not responding.");
    } else {
      print(
          "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
    }
  }







}


