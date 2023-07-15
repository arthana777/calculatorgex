import 'package:get/get.dart';

class MulController extends GetxController{
  var number1=0.obs;
  var number2=0.obs;
  var mul=0.obs;

  void Calcmul(){
    mul.value=number1.value * number2.value;
  }
}