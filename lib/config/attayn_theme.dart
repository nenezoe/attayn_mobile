import 'package:attayn_mobile/config/app_colors.dart';
import 'package:flutter/material.dart';

class WeBeTheme {
  static final _light = ThemeData.light().copyWith(
    primaryColor: AppColors.APP_BAR_COLOR3,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.APP_BAR_COLOR3,
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    useMaterial3: true,
  );
  static final _dark = ThemeData.dark().copyWith(
    primaryColor: AppColors.APP_BAR_COLOR3,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.APP_BAR_COLOR3,
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    useMaterial3: true,
  );

  static ThemeData get light => _light.copyWith(
        platform: TargetPlatform.iOS,
        appBarTheme: _light.appBarTheme.copyWith(
          elevation: 0,
          iconTheme: _light.iconTheme.copyWith(
            color: Colors.white,
          ),
          actionsIconTheme: _light.iconTheme.copyWith(
            color: Colors.white,
          ),
        ),
        iconTheme: _light.iconTheme.copyWith(
          color: Colors.white,
        ),
        primaryIconTheme: _light.primaryIconTheme.copyWith(
          color: Colors.white,
        ),
        floatingActionButtonTheme: _light.floatingActionButtonTheme.copyWith(
          shape: const CircleBorder(),
          elevation: 1,
        ),
        useMaterial3: true,
      );

  static ThemeData get dark => _dark.copyWith(
        platform: TargetPlatform.iOS,
        floatingActionButtonTheme: _light.floatingActionButtonTheme.copyWith(
          shape: const CircleBorder(),
          elevation: 1,
        ),
        useMaterial3: true,
      );
}