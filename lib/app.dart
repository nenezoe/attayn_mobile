import 'package:attayn_mobile/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/app_colors.dart';
import 'config/attayn_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
        color: AppColors.APP_BAR_COLOR1,
        theme: WeBeTheme.light,
        getPages: Routes.allRoutes,
      title: 'Flutter Demo',
      initialRoute: Routes.initialRoute,
    );
  }
}
