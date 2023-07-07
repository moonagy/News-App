import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controller/home_controller.dart';
import 'package:newsapp/core/function/alertexitapp.dart';
import 'package:newsapp/view/widget/bottombar.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
        builder: (controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'News App',
              ),
              elevation: 1,
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: controller.listPage.elementAt(controller.currentpage),
          ),
        ));
  }
}
