import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task/login/controller/loginController.dart';

class Home extends StatelessWidget {
  final loginInstance = Get.find<LoginController>();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() => Text("First name:${loginInstance.name.value}"))),
            Obx((() =>
                Text("Last name:${loginInstance.lastName.value.toString()}")))
          ],
        ),
      ),
    );
  }
}
