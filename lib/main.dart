import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'config/assets.dart';

void main() {
  runApp( MyApp());
}

class App extends StatelessWidget {
  App({super.key});
  final controller = AppController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Image.asset(
                Assets.messageBase,
                fit: BoxFit.cover,
                // color: Color.fromARGB(199, 68, 68, 1),
              ),
            ),
            Obx(
              () =>
               AnimatedContainer(
                height: controller.isExpanded.value ? 500 : 80,
                duration: 1.seconds,
                child: GestureDetector(
                  onTap: () {
                    controller.isExpanded.toggle();
                  },
                  child: Container(color: Colors.red,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppController extends GetxController {
  // RxBool isExpanded = RxBool(false);
  final isExpanded = false.obs;
}
