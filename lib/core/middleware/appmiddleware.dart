import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/services/services.dart';

class appMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;
  Services services = Get.find();
  @override
  @override
  RouteSettings? redirect(String? route) {
    if(services.sharedPreferences.getString("onBorading") == "1"){
      return const RouteSettings() ;
    }
  }
}