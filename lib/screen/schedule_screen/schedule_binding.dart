import 'package:attayn_mobile/screen/schedule_screen/schedule_controller.dart';
import 'package:get/get.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ScheduleController());
  }
}
