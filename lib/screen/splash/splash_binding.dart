import 'package:attayn_mobile/screen/splash/splash_controller.dart';
import 'package:get/get.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}