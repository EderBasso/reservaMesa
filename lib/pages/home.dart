import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_reserva_mesas/controllers/counter_controller.dart';
import 'package:projeto_reserva_mesas/pages/counter.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Counter Value: ${counterController.counter.value}"),
          ),
          const SizedBox(height: 50,),
          Center(
              child: ElevatedButton(onPressed: (){
                Get.to(CounterPage());
              }, child: const Text("Go to counter page"))),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){counterController.increment();},
        child: const Icon(Icons.add),),
    );
  }
}
