import 'dart:convert';

import 'package:my_covid_app/models/static_pages.dart';
import 'package:http/http.dart'as http;

String staticPages = "https://www.covidfacts.ps/ar/api/getAllStaticPage?fbclid=IwAR0eEaCski48i0SdjcqN4zMvnnjZtllcnOCVCW3ZB3sVp5fUnWsuL4Up_4o";


Future<StaticPages> getStaticPages() async {
  StaticPages  posts;
  var url = Uri.parse(staticPages);
  http.Response response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
  });
  if (response.statusCode == 200) {
    var body = json.decode(response.body);
    print("StaticPagesStaticPages11111111body${body}");
    posts = StaticPages.fromJson(body);
    print("StaticPagesStaticPages111111111$posts");
  } else if (response.statusCode == 404) {
    print("not StaticPagesStaticPages foundnot foundnot found");
  } else if (response.statusCode == 500) {
    print(
        "server StaticPages not responding.server not responding.server not responding.");
  } else {
    print(
        "some StaticPages other error or might be CORS policy error. you can add your url in CORS policy.");
  }
  return posts;
}