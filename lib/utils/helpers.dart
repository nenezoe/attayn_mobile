import 'package:flutter/material.dart';

class Helpers {
  static TextStyle textStyle(
      {double? fontSize,
      Color? color,
      FontStyle? fontStyle,
      FontWeight? fontWeight,
      // FontType type = FontType.regular,
      TextDecoration? decoration}) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: color ?? Colors.black,
      decoration: decoration,
      fontStyle: fontStyle,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static void goToLinkInApp(String url, [String? title]) {
    // if (!Get.isRegistered<ResourcesController>()) {
    //   Get.put(ResourcesController()).onLinkTap(
    //     'WeBe Life',
    //     url,
    //     title ?? 'WeBe Life',
    //   );
    // }
    // Get.find<ResourcesController>().onLinkTap(
    //   'WeBe Life',
    //   url,
    //   title ?? 'WeBe Life',
    // );
  }
}

enum FontType { thin, regular, bold, huge }
