import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/mul_controller.dart';


class MulScreen extends StatelessWidget {
  final MulController controller = Get.find<MulController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                controller.number1.value = int.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                controller.number2.value = int.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.Calcmul();
              },
              child: Text('Multiplication'),
            ),
            SizedBox(height: 20),
            Obx(() => Text('Mul: ${controller.mul.value}')),
          ],
        ),
      ),
    );
  }
}
