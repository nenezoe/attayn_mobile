import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/authentication/attayn_tab_header.dart';
import '../../auth/authentication/attayn_tab_header_dual.dart';
import '../../auth/authentication/authentication_controller.dart';
import '../../auth/authentication/forgot_password/forgot_password_view.dart';
import '../../auth/authentication/login/login_view.dart';
import '../../auth/authentication/signup/signup_view.dart';
import '../../config/assets.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  static const name = '/splash';

  @override
  Widget build(BuildContext context) {
    final _i = Get.isRegistered<AuthenticationController>()
        ? Get.find<AuthenticationController>()
        : Get.put(AuthenticationController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffC74444),
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                Obx(
                  () => AnimatedPositioned(
                    duration: 1.seconds,
                    top: 0,
                    bottom: !controller.isVisible.value
                        ? Get.height
                        : controller.isExpanded.value
                            ? Get.height * 0.32 + 61
                            : 0,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Obx(
                            () => AnimatedContainer(
                              // height: _.isImageBackground.value ? 80 : 0,
                              // height: _.isImageBackground.value ? 80 : 0,
                              duration: 350.milliseconds,
                              curve: Curves.linear,
                              decoration: BoxDecoration(
                                color: controller.isImageBackground.value
                                    ? null
                                    : Color(0xffC74444),
                                image: controller.isImageBackground.value
                                    ? const DecorationImage(
                                        image: AssetImage(
                                          Assets.messageB,
                                        ),
                                        // invertColors: const Color(0xffC74444),
                                        opacity: 0.6,
                                        fit: BoxFit.cover)
                                    : null,
                              ),
                            ),
                          ),
                        ),
                        // Positioned.fill(
                        //   child: Column(
                        //     children: [
                        //       Expanded(child: SizedBox()),
                        //       Container(
                        //           color: Colors.blue, child: Text('gggtygyggvhvg')),
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //     ],
                        //   ),
                        //   // top: controller.isSelected.value ? 100 : 50,
                        //   // // bottom: controller.isSelected.value ? 100 : 1,
                        //   // child: Text(
                        //   //   controller.isVisible.value ? 'achieve your goals' : '',
                        //   //   textAlign: TextAlign.center,
                        //   //   style: const TextStyle(color: Colors.white, height: 50),
                        //   // ),
                        // ),
                        Obx(
                          () => AnimatedPositioned(
                            duration: 350.milliseconds,
                            bottom: controller.isExpanded.value ? null : 81,
                            left: 0,
                            right: 0,
                            top: controller.isExpanded.value
                                ? Get.height * 0.32 - 41
                                : null,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Obx(
                                () => Text(
                                  controller.isImageBackground.value
                                      ? 'achieve your goals'
                                      : '',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Color(0xffEFEFEF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => AnimatedPositioned(
                    duration: 1.seconds,
                    top: !controller.isVisible.value
                        ? Get.height
                        : controller.isExpanded.value
                            ? Get.height * 0.32
                            : Get.height - 61,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: AnimatedContainer(
                      duration: 350.milliseconds,
                      // height: !controller.isVisible.value
                      //     ? 0
                      //     : controller.isExpanded.value
                      //         ? Get.height * 0.68
                      //         : 61,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Obx(
                        () => Column(
                          children: [
                            controller.pagePosition != 2
                                ? AttaynTabHeaderDual(
                                    onTapLeft: controller.gotoSignUp,
                                    onTapRight: controller.gotoLogin,
                                    selectedIndex: controller.pagePosition,
                                    leftText: 'Sign Up',
                                    rightText: 'Log In',
                                    fontSize: 14,
                                  )
                                : AttaynTabHeader(
                                    text: 'Forgot Password',
                                    fontSize: 14,
                                    onTap: () {
                                      controller.gotoMainAuthentication();
                                    },
                                  ),
                            // ),
                            Expanded(
                                // child: !controller.forgotPassword.value ?
                                child: PageView(
                              physics: NeverScrollableScrollPhysics(),
                              controller: controller.pageController,
                              onPageChanged: controller.onPageChanged,
                              children: [
                                //sign up screen
                                SignUpView(),

                                //log in screen
                                LogInView(),

                                ForgotPasswordView(),
                              ],
                            )
                                // : ForgotPasswordView(),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Obx(
          //   () =>
          Obx(
            () => AnimatedPositioned(
              duration: 1.seconds,
              top:
                  controller.isExpanded.value ? 30 : (Get.height / 2) - 15 - 61,
              left: controller.isExpanded.value ? 1 : 0,
              right: controller.isExpanded.value ? null : 0,
              height: controller.isExpanded.value ? 30 : 100,
              child: GestureDetector(
                // onTap: _.goToSecondSplashScreen,
                onTap: () {
                  controller.isImageBackground.value =
                      !controller.isImageBackground.value;
                  if (controller.isVisible.value == true) {
                    controller.isVisible.toggle();
                  } else {
                    Future.delayed(Duration(seconds: 2), () {
                      controller.isVisible.toggle();
                      // controller.isExpanded.toggle();
                    });
                  }

                  // _.isExpanded.toggle();

                  // Get.toNamed(Routes.secondRoute);
                },
                child: Center(
                  child: Image.asset(
                    // "assets/logo/attayn_logo.png",
                    Assets.attaynLogo,
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),

          // AnimatedPositioned(
          //   duration: 1.seconds,
          //   left: 110,
          //   // top: controller.isSelected.value ? 100 : 50,
          //   bottom: controller.isSelected.value ? 900 : 1,
          //   child: Text(
          //     controller.isVisible.value ? 'achieve your goals' : '',
          //     style: const TextStyle(color: Colors.white, height: 50),
          //   ),
          // ),

          // ),
        ],
      ),
    );
  }
}
