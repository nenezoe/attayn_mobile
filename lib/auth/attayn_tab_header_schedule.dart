import 'package:flutter/material.dart';

import '../utils/helpers.dart';

class AttaynTabHeaderSchedule extends StatelessWidget {
  const AttaynTabHeaderSchedule({
    Key? key,
    required this.onTapLeft,
    required this.onTapRight,
    this.leftText = 'Left',
    this.rightText = 'Right',
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20,
            ),
            child: Row(
              children: [
                //left tab header
                InkWell(
                  onTap: onTapLeft,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: DefaultTextStyle.merge(
                        style: Helpers.textStyle(
                          color: selectedIndex != 0
                              ? const Color(0xFFC4C4C4)
                              : Color(0xffA21212),
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

                //right tab header
                InkWell(
                  onTap: onTapRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: Center(
                      child: DefaultTextStyle.merge(
                        style: Helpers.textStyle(
                          color: selectedIndex != 1
                              ? const Color(0xFFC4C4C4)
                              : Color(0xffA21212),
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
              ],
            ),
          ),
          SizedBox(
            // height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (!hideBottomMover)
                  Row(
                    children: [
                      selectedIndex == 0
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(left: 35.0, right: 0),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 5,
                                  width: 21,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFA21212),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        9,
                                      ),
                                      topRight: Radius.circular(
                                        9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.1),
                              child: Container(),
                            ),
                      Expanded(
                        child: selectedIndex == 1
                            ? Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 5,
                                  width: 21,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFA21212),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        9,
                                      ),
                                      topRight: Radius.circular(
                                        9,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],
                  ),

                //divider
                // Container(
                //   height: 1,
                //   alignment: Alignment.bottomCenter,
                //   child: const Divider(
                //     thickness: 1,
                //     color: Color(0xFFADADAD),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
