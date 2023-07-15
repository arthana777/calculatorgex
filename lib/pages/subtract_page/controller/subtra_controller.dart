import 'package:get/get.dart';

class SubtraController extends GetxController{
  var number1=0.obs;
  var number2=0.obs;
  var result=0.obs;

  void Calcsubtra(){
    result.value=number1.value - number2.value;
  }
}