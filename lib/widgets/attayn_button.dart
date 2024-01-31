import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../utils/helpers.dart';

class AttaynButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onTap;
  final bool isCustomYellowGradient;
  final double height;
  final double? width;

  const AttaynButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.textColor,
    this.height = 40,
    this.width,
    this.isCustomYellowGradient = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.AUTH_BUTTON_COLOR1,
              AppColors.AUTH_BUTTON_COLOR2
            ],
          ),
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              primary: Color(0xffC74444),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
                // borderRadius: BorderRadius.zero, //Rectangular border
              ),
            ),
            // style: ButtonStyle(
            //   elevation: MaterialStateProperty.all(0.0),
            //   backgroundColor:
            //       MaterialStateProperty.all(color ?? Colors.transparent),
            //   shape: MaterialStateProperty.all(
            //     RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            // ),

            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20),
            //   //borderRadius: BorderRadius.zero, //Rectangular border
            // ),
            child: Text(
              text,
              style: Helpers.textStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ));
  }
}
