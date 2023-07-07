import 'package:get/get.dart';
Future<bool> alertExitApp(){
  Get.defaultDialog(
    title: 'تنبيه',
    middleText: "هل ترويد الخروج من التطبيق ",
    actions: [

    ],
  );
  return Future.value(true);
}