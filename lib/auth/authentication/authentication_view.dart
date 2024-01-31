import 'package:attayn_mobile/auth/authentication/authentication_controller.dart';
import 'package:attayn_mobile/auth/authentication/login/login_view.dart';
import 'package:attayn_mobile/auth/authentication/signup/signup_view.dart';
import 'package:attayn_mobile/auth/authentication/attayn_tab_header_dual.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  static const String name = '/auth';

  @override
  Widget build(BuildContext context) {
    final _ = Get.isRegistered<AuthenticationController>()
        ? Get.find<AuthenticationController>()
        : Get.put(AuthenticationController());

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //sign up login tabs
            Obx(
              () => AttaynTabHeaderDual(
                onTapLeft: _.goToSignUpTab,
                onTapRight: _.goToLoginTab,
                selectedIndex: _.pagePosition,
                leftText: 'Sign Up',
                rightText: 'Log In',
                fontSize: 14,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _.pageController,
                onPageChanged: _.onPageChanged,
                children: [
                  //sign up screen
                  SignUpView(),

                  //log in screen
                  LogInView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  // }
}
