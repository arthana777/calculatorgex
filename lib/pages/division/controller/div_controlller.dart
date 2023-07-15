import 'package:get/get.dart';

class DivController extends GetxController{
  var number1=0.obs;
  var number2=0.obs;
  var div=0.obs;
  
  void Calcdiv(){
    div.value=number1.value % number2.value;
  }
}