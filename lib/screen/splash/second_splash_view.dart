import 'package:attayn_mobile/screen/splash/second_splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/authentication/authentication_controller.dart';
import '../../auth/authentication/login/login_view.dart';
import '../../auth/authentication/signup/signup_view.dart';
import '../../auth/authentication/attayn_tab_header_dual.dart';
import '../../config/assets.dart';
import '../../config/routes.dart';

class SecondSplashView extends GetView<SecondSplashController> {
  static const name = '/second_splash';

  double boxHeight = 50;
  double boxWeight = 100;

  final _ = Get.isRegistered<AuthenticationController>()
        ? Get.find<AuthenticationController>()
        : Get.put(AuthenticationController());

  final heightController = SecondSplashController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Container(
                      // color: const Color(0xffC74444),
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          Assets.messageBase,
                          fit: BoxFit.cover,
                          // color: Color.fromARGB(199, 68, 68, 1),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.initialRoute);
                    },
                    child: Center(
                      child: Image.asset(
                        // "assets/logo/attayn_logo.png",
                        Assets.attaynLogo,
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Positioned(
                      //  left: 0,
                      // right: 0,
                      bottom: 80,
                      child: Text(
                        'Achieve your goals',
                        style: TextStyle(color: Colors.white),
                      )),
                  // Positioned(
                  //   bottom: 1,
                  //   child: AnimatedContainer(
                  //     duration: 1.seconds,
                  //     // height: regBtn ? 50 : 200,
                  //     child: Row(
                  //       children: [
                  //         Container(
                  //           width: 180,
                  //           height: boxHeight,
                  //           decoration: const BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.only(
                  //                 topLeft: Radius.circular(10),
                  //               )),
                  //           child: Center(
                  //             child: const Text(
                  //               'Sign Up',
                  //               style:
                  //                   TextStyle(color: Color(0xffC74444), fontSize: 20),
                  //             ),
                  //           ),
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             containerExpanded();
                  //             // if (regBtn == false) {
                  //             //   boxHeight = 50;
                  //             //   regBtn = !regBtn;
                  //             // } else {
                  //             //   boxHeight = 200;
                  //             // }
                  //           },
                  //           // onTap: _expandBox,
                  //           child: Container(
                  //             width: 180,
                  //             height: boxHeight,
                  //             decoration: const BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.only(
                  //                   topRight: Radius.circular(10),
                  //                 )),
                  //             child: const Center(
                  //               child: const Text(
                  //                 'Sign In',
                  //                 style:
                  //                     TextStyle(color: Color(0xffC74444), fontSize: 20),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                
                  // Positioned(
                  //   bottom: 1,
                  //   child: Container(
                  //     height: 50,
                  //     color: Colors.white,
                  //     child: Column(children: [
                  //       Row(
                  //         children: [
                  //           Container(
                  //             width: 180,
                  //             height: boxHeight,
                  //             decoration: const BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.only(
                  //                   topLeft: Radius.circular(10),
                  //                 )),
                  //             child: Center(
                  //               child: const Text(
                  //                 'Sign Up',
                  //                 style:
                  //                     TextStyle(color: Color(0xffC74444), fontSize: 20),
                  //               ),
                  //             ),
                  //           ),
                  //           InkWell(
                  //             onTap: () {
                  //               containerExpanded();
                  //             },
                  //             // onTap: _expandBox,
                  //             child: Container(
                  //               width: 180,
                  //               height: boxHeight,
                  //               decoration: const BoxDecoration(
                  //                   color: Colors.white,
                  //                   borderRadius: BorderRadius.only(
                  //                     topRight: Radius.circular(10),
                  //                   )),
                  //               child: const Center(
                  //                 child: const Text(
                  //                   'Sign In',
                  //                   style:
                  //                       TextStyle(color: Color(0xffC74444), fontSize: 20),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ]),
                  //   ),
                  // ),
                
                  // Positioned(
                  //   left: 0,
                  //   right: 0,
                  //   bottom: 250,
                    // child: 
                  
                  // )
                
                ],
              ),
            ),

            Obx(() => 
            AnimatedContainer(duration: 1.seconds,
            height: heightController.isExpanded.value ? 400 : 70,
            child: GestureDetector(
              onTap: (){
                heightController.isExpanded.toggle();
              },
              child: Column(children: [
                AttaynTabHeaderDual(
                      onTapLeft: _.goToSignUpTab,
                      onTapRight: _.goToLoginTab,
                      selectedIndex: _.pagePosition,
                      leftText: 'Sign Up',
                      rightText: 'Sign In',
                      fontSize: 14,
                    ),
                  // ),
                  Expanded(
                    child: 
                    PageView(
                      controller: _.pageController,
                      onPageChanged: _.onPageChanged,
                      children: [
                        //sign up screen
                        SignUpView(),
                    
                        //log in screen
                        LogInView(),
                      ],
                    ),
                  )
              ],),
            )
            ),
      

            )
          ],
        ),
      );
  }
}
