import 'package:attayn_mobile/screen/splash/splash_binding.dart';
import 'package:attayn_mobile/screen/splash/splash_view.dart';
import 'package:get/get.dart';



final splash = GetPage(
  name: SplashView.name,
  page: () =>  SplashView(),
  binding: SplashBinding(),
);