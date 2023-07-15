import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/subtra_controller.dart';

class SubScreen extends StatelessWidget {
  final SubtraController controller = Get.find<SubtraController>();

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
                controller.Calcsubtra();
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Obx(() => Text('Subtra: ${controller.result.value}')),
          ],
        ),
      ),
    );
  }
}
