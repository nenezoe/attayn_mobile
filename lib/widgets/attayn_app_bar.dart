import 'package:flutter/material.dart';

import '../config/assets.dart';

AppBar AttaynAppBar({
  Widget? title,
  String? titleText,
  List<Widget>? actions,
  // Widget? leading,
  Widget? image,
  PreferredSizeWidget? bottom,
  VoidCallback? onTitleTap,
  VoidCallback? onBackPressed,
  bool transparentBackground = false,
}) {
  return AppBar(
    elevation: 0,
    toolbarHeight: 75,
    backgroundColor: transparentBackground ? Colors.transparent : Colors.white,
    flexibleSpace: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.brand,
              height: 25,
              width: 77,
              // color: Colors.white,
            ),
            Image.asset(Assets.notification),
          ],
        ),
      ),
    ),
    // bottom: bottom,
    // leading: leading ??
    //     IconButton(
    //       onPressed: onBackPressed ?? Get.back,
    //       icon: const Icon(
    //         Icons.arrow_back_ios,
    //         color: Colors.white,
    //       ),
    //     ),
    // actions: actions ?? [const AttaynNotificationIcon()],
  );
}
