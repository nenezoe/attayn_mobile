import 'package:flutter/material.dart';

class AttaynTabHeader extends StatelessWidget {
  const AttaynTabHeader({
    Key? key,
    required this.onTap,
    required this.text,
    // this.anotherForgotPasswordWidget = 'Forgotpassword',
    this.fontSize = 18,
    this.hideBottomMover = false,
    this.widget,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final double fontSize;
  final bool hideBottomMover;
  final Widget? widget;
  // final Widget? anotherForgotPasswordWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 61.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Color(0xffffffff),
        ),

        // child: Stack(
        // children: [
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                width: 20.66,
              ),
              Icon(
                Icons.arrow_back_ios,
                color: Color(0xffC74444),
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color(0xffC74444),
                ),
              )
            ],
          ),
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
      ),
    );
  }
}
