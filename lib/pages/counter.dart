import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_reserva_mesas/controllers/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Counter is now at: ${_counterController.counter.value}")),
          const SizedBox(height: 50,),
          Center(child:
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: const Text("Go to home page")) ,)
        ],
      ),
    );
  }
}
