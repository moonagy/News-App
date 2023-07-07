import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controller/home_controller.dart';
import 'package:newsapp/view/widget/button_appbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : CustomButtonAppBar(
                      textbutton: controller.titlebottomappbar[i],
                      icondata: controller.bottomappbar[i]['icon'],
                      onPressed: () {
                        controller.changePage(i);
                      },
                      active: controller.currentpage == i ? true : false);
                }))
              ],
            )));
  }
}