import 'package:attayn_mobile/screen/splash/second_splash_controller.dart';
import 'package:attayn_mobile/screen/splash/splash_controller.dart';
import 'package:get/get.dart';

class SecondSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SecondSplashController());
  }
}
