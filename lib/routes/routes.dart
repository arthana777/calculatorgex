import 'package:calculatorgetx/pages/division/binding/div_binding.dart';
import 'package:calculatorgetx/pages/mul_page/binding/mul_binding.dart';
import 'package:calculatorgetx/pages/subtract_page/binding/subtra_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/add_page/bindind/add_binding.dart';
import '../pages/add_page/view/add.dart';
import '../pages/division/view/div.dart';
import '../pages/mul_page/view/multiplication.dart';
import '../pages/subtract_page/view/subtract.dart';
import '../screens/homescreen.dart';


class AppRoutes {
  static String homeScreen = '/home';
  static String multi = '/multi';
  static String divid = '/divid';
  static String sub = '/sub';
  static String add = '/add';

  static List<GetPage> pages = [
    GetPage(name: homeScreen, page: () => HomeScreen(),),
    GetPage(name: add, page: () => AdditionScreen(),binding: AddBinding()),
    GetPage(name: sub, page: () => SubScreen(),binding: SubtraBinding()),
    GetPage(name: multi, page: () => MulScreen(),binding: MulBinding()),
    GetPage(name: divid, page: () => DivScreen(),binding:DivBinding() ),
  ];
}
