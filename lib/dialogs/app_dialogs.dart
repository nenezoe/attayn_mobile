import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../requests/attayn_exeption.dart';
import '../utils/helpers.dart';

class AppDialogs {
  static Future error(String errorMessage,
      {bool persistent = false, VoidCallback? onClose}) {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }

    return showDialog(
      barrierDismissible: persistent,
      context: (Get.context ?? Get.overlayContext)!,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '😢',
                  style: Helpers.textStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: Helpers.textStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //close button
                SizedBox(
                  width: 200,
                  child: MaterialButton(
                    onPressed: () {
                      //pop screen
                      Get.back();
                      onClose?.call();
                    },
                    child: Text(
                      'Close',
                      style: Helpers.textStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future errorFromAttaynException(AttaynException errorMessage) {
    return error(errorMessage.message);
  }

  static Future success(String message,
      {bool persistent = false,
      VoidCallback? onClose,
      String? closeButtonText}) {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }

    return showDialog(
      barrierDismissible: persistent,
      context: (Get.context ?? Get.overlayContext)!,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '🎉',
                  style: Helpers.textStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Helpers.textStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //close button
                SizedBox(
                  width: 200,
                  child: MaterialButton(
                    onPressed: () {
                      //pop screen
                      Get.back();
                      onClose?.call();
                    },
                    child: Text(
                      closeButtonText ?? 'Close',
                      style: Helpers.textStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<T?> prompt<T>(String message,
      {List<Widget> actions = const [], String? title}) {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }

    return showDialog<T>(
      barrierDismissible: true,
      context: (Get.context ?? Get.overlayContext)!,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      title,
                      style: Helpers.textStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                Text(
                  message,
                  style: Helpers.textStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                if (actions.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: actions,
                  )
                else
                  Align(
                    child: InkWell(
                      onTap: Get.back,
                      child: Text(
                        'OK',
                        style: Helpers.textStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<T?> general<T>(
    Widget content, {
    List<Widget> actions = const [],
  }) {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }

    return showDialog<T>(
      barrierDismissible: true,
      context: (Get.context ?? Get.overlayContext)!,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                content,
                const SizedBox(
                  height: 50,
                ),
                if (actions.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: actions,
                  )
                else
                  Align(
                    child: InkWell(
                      onTap: Get.back,
                      child: Text(
                        'OK',
                        style: Helpers.textStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future previousLoading([bool persistent = true]) {
    final context = (Get.context ?? Get.overlayContext)!;

    return showDialog(
      context: context,
      barrierDismissible: persistent,
      builder: (ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            child: SizedBox(
              height: 130,
              child: Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          ),
        );
      },
    );
  }

  static Future loading([bool persistent = true]) {
    final context = (Get.context ?? Get.overlayContext)!;

    return showDialog(
      context: context,
      barrierDismissible: persistent,
      builder: (ctx) {
        bool fade = false;
        return StatefulBuilder(builder: (context, setDialogState) {
          Future.delayed(1.seconds, () {
            setDialogState(
              () => fade = !fade,
            );
          });
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Center(
              child: AnimatedOpacity(
                opacity: fade ? 0.5 : 1.0,
                duration: 1000.milliseconds,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage(Assets.icWeBeColored),
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }

  static Future<bool?> confirm(
    String prompt, {
    String okText = 'OK',
    cancelText = 'Cancel',
    Color okColor = const Color(0xFF000000),
    Color cancelColor = const Color(0xFF858585),
  }) async {
    return showDialog<bool>(
      context: (Get.context ?? Get.overlayContext)!,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              prompt,
              textAlign: TextAlign.center,
              style: Helpers.textStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: Get.back,
                  child: Text(
                    cancelText,
                    style: Helpers.textStyle(
                      color: cancelColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Get.back(result: true),
                  child: Text(
                    okText,
                    style: Helpers.textStyle(
                      color: okColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
