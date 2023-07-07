import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/data/model/articale.dart';
import 'package:newsapp/view/screen/business_screen.dart';
import 'package:newsapp/view/screen/home_screen.dart';
import 'package:newsapp/view/screen/sports_screen.dart';
import 'package:newsapp/view/screen/technology_screen.dart';
class HomeController extends GetxController{
  getData(String cat)async{
    const String apiKey = '72a4dfb14caf4a899b63dbf1ee9bab9f' ;
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=$cat&apiKey=$apiKey'
    );
    http.Response res = await http.get(url);
    if(res.statusCode == 200){
      try{
        return Articles.fromJson(jsonDecode(res.body));
      }catch(e){
        Get.snackbar('Alert', e.toString());
      }
    }
  }

  int currentpage = 0;

  List<Widget> listPage = [
    const homeScreen(),
    const Technology(),
    const Business(),
    const Sports(),
  ];

  List  titlebottomappbar = [
    "home" ,
    "Technology" ,
    "Business " ,
    "Sports"
  ] ;
  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "Technology", "icon": Icons.biotech_sharp},
    {"title": "Business ", "icon": Icons.business},
    {"title": "Sports", "icon": Icons.sports}
  ];

  changePage(int i) {
    currentpage = i;
    update();
  }
}