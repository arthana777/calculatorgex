
import 'package:calculatorgetx/pages/division/controller/div_controlller.dart';
import 'package:calculatorgetx/pages/mul_page/controller/mul_controller.dart';
import 'package:get/get.dart';

import '../../subtract_page/controller/subtra_controller.dart';
import '../controller/add_controller.dart';

class AddBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.lazyPut(() => AdditionController());
  }

}