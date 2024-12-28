import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_class/controller/homecont.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  homecontroller homecontrol = Get.put(homecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetX<homecontroller>(
      builder: (c) {
        return Column(
          children: [
            Text("${homecontrol.countervalue.value}"),
            const TextField(
              decoration: InputDecoration(),
            ),
            const TextField(),
            ElevatedButton(onPressed: () {}, child: const Text("Debit")),
            ElevatedButton(onPressed: () {}, child: const Text("Credit"))
          ],
        );
      },
    ));
  }
}
