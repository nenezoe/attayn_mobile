import 'package:attayn_mobile/screen/schedule_screen/schedule_controller.dart';
import 'package:attayn_mobile/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/attayn_app_bar.dart';
import '../../widgets/attayn_bottom_bar.dart';
import 'fragments/bookmarks_fragment.dart';
import 'fragments/schedule_fragment.dart';

class ScheduleView extends StatelessWidget {
  ScheduleView({super.key});
  static const name = '/schedule';

  final _ = Get.put(ScheduleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttaynAppBar(
          // titleText: 'Affghghgv',
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 20.0),
          //   child: Image.asset(Assets.log),
          // ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 22.1),
          //     child: Image.asset(Assets.notification),
          //   )
          // ]
          ),
      body: Column(children: [
        Container(
          height: 35,
          color: const Color(0xffffffff),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) => Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      index == 0 ? 'Schedule' : 'Bookmarks',
                      style: Helpers.textStyle(
                          color: index == 0
                              ? Color(0xffA21212)
                              : Color(0xff9F9F9F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 4,
                      width: 30,
                      decoration: BoxDecoration(
                          color: index == 0
                              ? Color(0xffA21212)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(21)),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: _.pageController,
            onPageChanged: _.onPageChanged,
            children: const [
              //sign up screen
               ScheduleFragment(),

              //log in screen
              BookMarksFragments(),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: const AttaynBottomBar(),
    );
  }
}

// Text(
// 'Attayn',
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 16,
// color: Color(0xff666666)),
// ),
