
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../pages/add_page/view/add.dart';
import '../pages/division/view/div.dart';
import '../pages/mul_page/view/multiplication.dart';
import '../pages/subtract_page/view/subtract.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: ButtonStyle(),
                onPressed: (){
                  Get.to(AdditionScreen());
                },
                child: Text('ADDITION')),
            TextButton(
                onPressed: (){
                  Get.to(SubScreen());
                },
                child: Text('SUBTRACTION')),
            TextButton(
                onPressed: (){
                  Get.to(MulScreen());
                },
                child: Text('MULTIPLICATION')),
            TextButton(
                onPressed: (){
                  Get.to(DivScreen());
                },
                child: Text('DIVISION'))
          ]
        ),
      ),
    );
  }
}
