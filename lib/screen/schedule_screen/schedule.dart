import 'package:attayn_mobile/screen/schedule_screen/schedule_binding.dart';
import 'package:attayn_mobile/screen/schedule_screen/schedule_view.dart';
import 'package:get/get.dart';

final schedule = GetPage(
  name: ScheduleView.name,
  page: () => ScheduleView(),
  binding: ScheduleBinding(),
);
