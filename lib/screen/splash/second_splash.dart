import 'package:attayn_mobile/screen/splash/second_splash_binding.dart';
import 'package:attayn_mobile/screen/splash/second_splash_controller.dart';
import 'package:attayn_mobile/screen/splash/second_splash_view.dart';
import 'package:attayn_mobile/screen/splash/splash_binding.dart';
import 'package:get/get.dart';

final secondSplash = GetPage(
  name: SecondSplashView.name,
  page: () =>  SecondSplashView(),
  binding: BindingsBuilder.put(() => SecondSplashController()),
);
