import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/splash_screen_gradients.dart';

class SplashController extends GetxController {
  final index = 0.obs;

  final isExpanded = false.obs;

  final isMainAuth = true.obs;

  final isSelected = false.obs;

  final isVisible = false.obs;

  final forgotPassword = false.obs;

  Future<void> gotoLogin() async {
    if (pagePosition == 1) {
      await gotoSignUp();
      isExpanded.value = !isExpanded.value;
    } else {
      isExpanded.value = true;
      await pageController.animateToPage(
        1,
        duration: 400.milliseconds,
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> gotoSignUp() async {
    if (pagePosition == 0) {
      isExpanded.value = !isExpanded.value;
    } else {
      isExpanded.value = true;
      await pageController.animateToPage(
        0,
        duration: 400.milliseconds,
        curve: Curves.easeInOut,
      );
    }
  }

  gotoForgotPassword() {
    // forgotPassword.value = true;
    pageController.animateToPage(
      2,
      duration: 300.milliseconds,
      curve: Curves.easeIn,
    );
  }

  gotoMainAuthentication() {
    // forgotPassword.value = false;
    pageController.animateToPage(
      1,
      duration: 300.milliseconds,
      curve: Curves.easeIn,
    );
  }

  final isImageBackground = false.obs;

  Gradient get currentGradient => splashScreenGradients[index.value];

  final _showNavigateBtn = false.obs;
  bool get showNavigateBtn => _showNavigateBtn.value;

  void navigate() {
    // checkLoginState();
  }

  late final PageController pageController;

//current page position
  final _pagePosition = 0.obs;

  int get pagePosition => _pagePosition.value;

  String get tabHeader => pagePosition == 0 ? 'Sign Up' : 'Login';

  //Sign Up Tab comes first from the design
  void goToLoginTab() {
    //navigate to sign up page
    if (pagePosition == 1) {
      //do nothing
    } else {
      //navigate to sign up page
      pageController.animateToPage(
        1,
        duration: 300.milliseconds,
        curve: Curves.easeIn,
      );

      _pagePosition.value = 1;
    }
    debugPrint('2 Pos: $pagePosition');
  }

  //Sign Up Tab comes first from the design
  void goToSignUpTab() {
    //navigate to login in page
    if (pagePosition == 0) {
      //do nothing
    } else {
      //navigate to sign up page
      pageController.animateToPage(
        0,
        duration: 300.milliseconds,
        curve: Curves.easeIn,
      );
      _pagePosition.value = 0;
    }
  }

  void onPageChanged(int page) {
    _pagePosition.value = page;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
