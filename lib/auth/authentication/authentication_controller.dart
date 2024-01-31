import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //page controller
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
