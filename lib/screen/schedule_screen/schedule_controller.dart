import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleController extends GetxController {
  late final PageController pageController;

//current page position
  final _pagePosition = 0.obs;

  int get pagePosition => _pagePosition.value;

  final _currentTabIndex = 2.obs;

  int get currentTabIndex => _currentTabIndex.value;

  Color getColorFromIndex(int tab) {
    if (currentTabIndex == tab) {
      return Colors.red;
    }
    return const Color(0xFFDCCCC0);
  }

  DateTime today = DateTime.now();

  void onDaysSelected(DateTime day, DateTime focusedDay) {
    today = day;
  }

  String get tabHeader => pagePosition == 0 ? 'Sign Up' : 'Login';

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

  void goToSchedule() {
    if (pagePosition != 1) {
      // pageController.animateToPage(
      //   1,
      //   duration: 300.milliseconds,
      //   curve: Curves.linear,
      // );
      _pagePosition.value = 1;
    }
  }

  void goToBookmarks() {
    if (pagePosition != 0) {
      // pageController.animateToPage(
      //   0,
      //   duration: 300.milliseconds,
      //   curve: Curves.easeIn,
      // );
      _pagePosition.value = 0;
    }
  }
}
