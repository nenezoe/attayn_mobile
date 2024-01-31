import 'package:flutter/material.dart';

import '../../utils/helpers.dart';

class AttaynTabHeaderDual extends StatelessWidget {
  const AttaynTabHeaderDual({
    Key? key,
    required this.onTapLeft,
    required this.onTapRight,
    this.leftText = 'Left',
    this.rightText = 'Right',
    // this.anotherForgotPasswordWidget = 'Forgotpassword',
    this.fontSize = 18,
    this.hideBottomMover = false,
    this.leftWidget,
    this.rightWidget,
    required this.selectedIndex,
  }) : super(key: key);

  final VoidCallback onTapLeft;
  final VoidCallback onTapRight;
  final int selectedIndex;
  final String leftText;
  final String rightText;
  final double fontSize;
  final bool hideBottomMover;
  final Widget? leftWidget;
  final Widget? rightWidget;
  // final Widget? anotherForgotPasswordWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: Color(0xffEFEFEF),
      ),

      // child: Stack(
      // children: [
      child: Row(
        children: [
          //left tab header
          Expanded(
            child: InkWell(
              onTap: onTapLeft,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? const Color(0xffffffff) : null,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(selectedIndex == 0 ? 15 : 0)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Center(
                  child: DefaultTextStyle.merge(
                    style: Helpers.textStyle(
                      color: selectedIndex != 0
                          ? const Color(0xFF9F9F9F)
                          : Color(0xffC74444),
                      fontSize: fontSize,
                    ),
                    child: leftWidget ??
                        Text(
                          leftText,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ),
              ),
            ),
          ),

          //right tab header
          Expanded(
            child: GestureDetector(
              onTap: onTapRight,
              child: Container(
                height: 61,
                // width: double.infinity,
                decoration: BoxDecoration(
                    color: selectedIndex == 1 ? Color(0xffffffff) : null,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(selectedIndex == 1 ? 15 : 0),
                        topRight: Radius.circular(15))),
                // color: selectedIndex != 1
                //           ? Color(0xffEFEFEF)
                //           : Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.center,
                child: Center(
                  child: DefaultTextStyle.merge(
                    style: Helpers.textStyle(
                      color: selectedIndex != 1
                          ? const Color(0xFF9F9F9F)
                          : Color(0xffC74444),
                      fontSize: fontSize,
                    ),
                    child: rightWidget ??
                        Text(
                          rightText,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // SizedBox(
      //   height: double.infinity,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       if (!hideBottomMover)
      //         Row(
      //           children: [
      //             Expanded(
      //               child: selectedIndex == 0
      //                   ? Container(
      //                       alignment: Alignment.bottomCenter,
      //                       child: Container(
      //                         height: 5,
      //                         width: 78,
      //                         decoration: const BoxDecoration(
      //                           // color: Color(0xFFADADAD),
      //                           borderRadius: BorderRadius.only(
      //                             topLeft: Radius.circular(
      //                               9,
      //                             ),
      //                             topRight: Radius.circular(
      //                               9,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     )
      //                   : Container(),
      //             ),
      //             Expanded(
      //               child: selectedIndex == 1
      //                   ? Container(
      //                       alignment: Alignment.bottomCenter,
      //                       child: Container(
      //                         height: 5,
      //                         width: 70,
      //                         decoration: const BoxDecoration(
      //                           // color: Color(0xFFADADAD),
      //                           borderRadius: BorderRadius.only(
      //                             topLeft: Radius.circular(
      //                               9,
      //                             ),
      //                             topRight: Radius.circular(
      //                               9,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     )
      //                   : Container(),
      //             ),
      //           ],
      //         ),
    );
  }
}
