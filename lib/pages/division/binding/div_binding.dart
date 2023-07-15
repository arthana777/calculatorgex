import 'package:calculatorgetx/pages/division/controller/div_controlller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../add_page/controller/add_controller.dart';

class DivBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DivController());
  }

}