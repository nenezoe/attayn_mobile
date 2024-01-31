import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../config/assets.dart';
import '../screen/schedule_screen/schedule_controller.dart';

class AttaynBottomBar extends StatelessWidget {
  const AttaynBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = Get.find<ScheduleController>();
    return Container(
      // height: 65,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        // gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [Color(0xFFE1D3CB), Color(0xFFB6A18E), Color(0xFFB6A18E)],
        // ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          currentIndex: _.currentTabIndex,
          onTap: _.onPageChanged,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          enableFeedback: true,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(color: Color(0xffA21212)),
          items: [
            //profile
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.svgConnet,
                color: _.getColorFromIndex(0),
              ),
              label: '',
            ),

            //we pods
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.svgExplore,
                color: _.getColorFromIndex(1),
              ),
              label: '',
            ),

            //messages
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.svgLive,
                color: _.getColorFromIndex(2),
              ),
              label: 'Live',
            ),

            //affinity groups
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.svgInsight,
                color: _.getColorFromIndex(3),
              ),
              label: '',
            ),

            //explore
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(9.13),
                child: SvgPicture.asset(
                  Assets.svgProfile,
                  color: _.getColorFromIndex(4),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
