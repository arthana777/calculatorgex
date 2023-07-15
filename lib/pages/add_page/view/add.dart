import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../controller/add_controller.dart';


class AdditionScreen extends StatelessWidget {
  final AdditionController _additionController = Get.find<AdditionController>();

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
                _additionController.number1.value = int.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _additionController.number2.value = int.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _additionController.Calcsum();
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Obx(() => Text('Sum: ${_additionController.sum.value}')),
          ],
        ),
      ),
    );
  }
}
