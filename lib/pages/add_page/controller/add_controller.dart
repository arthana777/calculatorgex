import 'package:get/get.dart';

class AdditionController extends GetxController{
  var number1=0.obs;
  var number2=0.obs;
  var sum=0.obs;

  void Calcsum(){
    sum.value=number1.value + number2.value;
  }
}