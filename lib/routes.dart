
import 'package:get/get.dart';
import 'package:newsapp/view/screen/home.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name:'/' , page: () => const languageScreen(),middlewares:[
  //   appMiddleWare()
  // ]),
  GetPage(name:'/' , page: () =>  const Home()),

  // =================== Home ============================================= //
];
