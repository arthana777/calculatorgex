import 'package:calculatorgetx/screens/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../pages/add_page/controller/add_controller.dart';
import '../pages/division/controller/div_controlller.dart';
import '../pages/mul_page/controller/mul_controller.dart';
import '../pages/subtract_page/controller/subtra_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AdditionController());
    Get.lazyPut(() => SubtraController());
    Get.lazyPut(() => MulController());
    Get.lazyPut(() => DivController());
  }

}