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
  var staticPagesList = []; setStaticPages (var s){ staticPagesList = s ;
                          // emit(SetStaticPagesState());
  }
  var QuestionList = []; setQuestionList (var s){ QuestionList = s ;
                                                  // emit(SetQuestionListState());
  }
  var statistics;  setstatistics (var s){ statistics = s ;
                      // emit(SetStatisticsState());
  }
  var motamin;  setMotamin (var s){ motamin = s ;
                  // emit(SetMotaminState());
  }
  var allPostsList = [];  setPosts (var s){ allPostsList = s ;
                             // emit(SetPostsState());
  }
  var allSehialist ;  setSehiaList (var s){ allSehialist = s ;
                        // emit(SetSehiaState());
  }
  var searchField; setSearchField(var s){searchField = s; emit(SetSearchFieldState());}
  var allArticles = [];  setArticles (var s){ allArticles = s ;
                          // emit(SetArticlesState());
  }
  var allNews = [];  setNews (var s){ allNews = s ;
                      // emit(SetNewsState());
  }
  String postDetail = ""; setPostsDetail ({var s}){ postDetail = s ; }
  var drawerval ; setDrawer(var x){drawerval = x; emit(SetDrawerState());}
  bool bottomstate = false; setBottomState(){ bottomstate = true; emit(SetBottomState());}
  bool drawerstate = false;  showDrawerState(){ drawerstate = !drawerstate; emit(ShowDrawerState());}
  var allSubsList = [];  setSubjects (var s){ allSubsList = s ; }
  var allInfographicList = [];  setInfographicList (var s){ allInfographicList = s ;
                                // emit(SetInfographicListState());
  }
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
int selectedIndex = 3;
 onItemTapped(int index) {
      selectedIndex = index;
emit(SelectedIndexState());
}

  Future<dynamic> getData(String x) async {
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
  return body;
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
      body = json.decode(response.body);
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

  // Future<Statis> getStatis() async {
  //   Statis?  statis = Statis();
  //   var url = Uri.parse(statisURL);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print("Statis11111111body${body}");
  //     statis = Statis.fromJson(body);
  //     print("StatisStatisStatisStatis11111111$statis");
  //   } else if (response.statusCode == 404) {
  //     print("not StatisStatisStatis foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server Statis not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some Statis other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return statis;
  // }

  // Future<dynamic> getMotamin() async {
  //   // Motamin?  motamin =
  //   var body;
  //   var url = Uri.parse(MotaminURL);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //       = json.decode(response.body);
  //     print("Motamin11111111body${body}");
  //     // motamin = Motamin.fromJson(body);
  //     // print("Motamin1Motamin1Motamin1Motamin111111111$motamin");
  //   } else if (response.statusCode == 404) {
  //     print("not Motamin1Motamin1Motamin1 foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server Motamin1 not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some Motamin1 other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return body;
  // }

// Future<void> sendWeather() async {
  //   http.post(Uri(path:
  //   "https://console.firebase.google.com/u/0/project/amazing-counter-d892021/firestore/data/"),
  //       body: WeatherApi().toJson())
  //       .then((res) {
  //     print(res.body.toString());
  //   });
  // }
  // Future<SehiaModel> getSehia() async { var body ;
  // SehiaModel  sehiaModel;
  // var url = Uri.parse(EndPoints.basicUrl + EndPoints.infographic);
  // http.Response response = await http.get(url, headers: {
  //   'Content-Type': 'application/json',
  //   'Access-Control-Allow-Origin': '*',
  //   'Access-Control-Allow-Credentials': 'true',
  //   'Access-Control-Allow-Headers': 'Content-Type',
  //   'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  // });
  // if (response.statusCode == 200) {
  //   body = json.decode(response.body);
  //   print("sehiaModelsehiaModelsehiaModel11111111body${body}");
  //   sehiaModel = SehiaModel.fromJson(body);
  //   print("sehiaModelsehiaModelsehiaModel 11111111$sehiaModel");
  // } else if (response.statusCode == 404) {
  //   print("not sehiaModelsehiaModelsehiaModel foundnot foundnot found");
  // } else if (response.statusCode == 500) {
  //   print(
  //       "server sehiaModel not responding.server not responding.server not responding.");
  // } else {
  //   print(
  //       "some sehiaModel other error or might be CORS policy error. you can add your url in CORS policy.");
  // }
  // return sehiaModel;
  // }
  //
  // Future<CovidVirus> getCovid() async { var body ;
  // CovidVirus  covid;
  // var url = Uri.parse(EndPoints.basicUrl + EndPoints.infographic);
  // http.Response response = await http.get(url, headers: {
  //   'Content-Type': 'application/json',
  //   'Access-Control-Allow-Origin': '*',
  //   'Access-Control-Allow-Credentials': 'true',
  //   'Access-Control-Allow-Headers': 'Content-Type',
  //   'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  // });
  // if (response.statusCode == 200) {
  //   body = json.decode(response.body);
  //   print("covidcovidcovid11111111body${body}");
  //   covid = CovidVirus.fromJson(body);
  //   print("covidcovidcovid 11111111$covid");
  // } else if (response.statusCode == 404) {
  //   print("not covidcovidcovid foundnot foundnot found");
  // } else if (response.statusCode == 500) {
  //   print(
  //       "server Subjects not responding.server not responding.server not responding.");
  // } else {
  //   print(
  //       "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
  // }
  // return covid;
  // }
  //
  // Future<Questions> getQuestionss() async { var body ;
  // Questions  questions;
  // var url = Uri.parse(EndPoints.basicUrl + EndPoints.infographic);
  // http.Response response = await http.get(url, headers: {
  //   'Content-Type': 'application/json',
  //   'Access-Control-Allow-Origin': '*',
  //   'Access-Control-Allow-Credentials': 'true',
  //   'Access-Control-Allow-Headers': 'Content-Type',
  //   'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  // });
  // if (response.statusCode == 200) {
  //   body = json.decode(response.body);
  //   print("questionss11111111body${body}");
  //   questions = Questions.fromJson(body);
  //   print("questions 11111111$questions");
  // } else if (response.statusCode == 404) {
  //   print("not SubjectsSubjectsSubjects foundnot foundnot found");
  // } else if (response.statusCode == 500) {
  //   print(
  //       "server Subjects not responding.server not responding.server not responding.");
  // } else {
  //   print(
  //       "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
  // }
  // return questions;
  // }
  //
  // Future<InfoGraphic> getInfographics() async { var body ;
  // InfoGraphic  infoGraphic;
  //   var url = Uri.parse(EndPoints.basicUrl + EndPoints.infographic);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //      body = json.decode(response.body);
  //     print("Subjects11111111body${body}");
  //     infoGraphic = InfoGraphic.fromJson(body);
  //     // print("SubjectsSubjectsSubjects 11111111$subjects");
  //   } else if (response.statusCode == 404) {
  //     print("not SubjectsSubjectsSubjects foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server Subjects not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return infoGraphic;
  // }
  //
  // Future<Subjects> getSubs() async {
  //   Subjects  subjects;
  //   var url = Uri.parse(statisURL);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print("Subjects11111111body${body}");
  //     subjects = Subjects.fromJson(body);
  //     print("SubjectsSubjectsSubjects 11111111$subjects");
  //   } else if (response.statusCode == 404) {
  //     print("not SubjectsSubjectsSubjects foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server Subjects not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some Subjects other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return subjects;
  // }
  //

  //
  // Future<PostsData> getPostsData() async {
  //   PostsData  posts;
  //   var url = Uri.parse(postsData);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print("posts11111111body${body}");
  //     posts = PostsData.fromJson(body);
  //     print("postspostsposts111111111$posts");
  //   } else if (response.statusCode == 404) {
  //     print("not postspostsposts foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server posts not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some posts other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return posts;
  // }
  //
  // Future<QuestionsBank> getQuestionsBank() async {
  //   QuestionsBank  posts;
  //   var url = Uri.parse(question);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print("QuestionsBankQuestionsBanks11111111body${body}");
  //     posts = QuestionsBank.fromJson(body);
  //     print("QuestionsBankQuestionsBank111111111$posts");
  //   } else if (response.statusCode == 404) {
  //     print("not QuestionsBankQuestionsBank foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server QuestionsBank not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some QuestionsBank other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return posts;
  // }
  //
  // Future<StaticPages> getStaticPages() async {
  //   StaticPages  posts;
  //   var url = Uri.parse(staticPages);
  //   http.Response response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Access-Control-Allow-Origin': '*',
  //     'Access-Control-Allow-Credentials': 'true',
  //     'Access-Control-Allow-Headers': 'Content-Type',
  //     'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  //   });
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print("StaticPagesStaticPages11111111body${body}");
  //     posts = StaticPages.fromJson(body);
  //     print("StaticPagesStaticPages111111111$posts");
  //   } else if (response.statusCode == 404) {
  //     print("not StaticPagesStaticPages foundnot foundnot found");
  //   } else if (response.statusCode == 500) {
  //     print(
  //         "server StaticPages not responding.server not responding.server not responding.");
  //   } else {
  //     print(
  //         "some StaticPages other error or might be CORS policy error. you can add your url in CORS policy.");
  //   }
  //   return posts;
  // }







}


