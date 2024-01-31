import 'package:attayn_mobile/auth/authentication/authentication_binding.dart';
import 'package:attayn_mobile/auth/authentication/authentication_view.dart';
import 'package:get/get.dart';

final authentication = GetPage(
  name: AuthenticationView.name,
  page: () => const AuthenticationView(),
  binding: AuthenticationBinding(),
);
