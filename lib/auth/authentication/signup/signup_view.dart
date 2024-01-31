import 'package:attayn_mobile/auth/authentication/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/assets.dart';
import '../../../utils/helpers.dart';
import '../../../widgets/attayn_button.dart';
import '../../../widgets/attayn_text_field.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  final _ = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // if (Get.isRegistered<EmbeddedAuthController>()) ...[
          //   const SizedBox(
          //     height: 30,
          //   ),
          //   Align(
          //     child: Text(
          //       'Sign Up to continue',
          //       style: Get.textTheme.headline5,
          //     ),
          //   )
          // ],
          // const SizedBox(
          //   height: 10,
          // ),

          //validation
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 30, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //email
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
                  child: AttaynTextField(
                    // label: 'Full Name',
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Color(0xffC0C0C0),
                      fontWeight: FontWeight.w400,
                    ),
                    icon: const ImageIcon(AssetImage(
                      Assets.person,
                    )),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.person,
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                    // prefixIcon: const Icon(Icons.person_2_outlined),
                    onChanged: _.onfullnameChange,
                    textInputType: TextInputType.name,
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: AttaynTextField(
                    // label: 'Full Name',
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Color(0xffC0C0C0),
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.email,
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                    onChanged: _.onEmailChange,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                //password
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: AttaynTextField(
                    // label: 'Password',
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color(0xffC0C0C0),
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.password,
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),

                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.eye,
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                    onChanged: _.onPasswordChange,
                    obscureText: true,
                  ),
                ),

                //confirm password input field

                const SizedBox(
                  height: 50.0,
                ),

                //button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: AttaynButton(
                    width: double.infinity,
                    text: 'Sign Up',
                    onTap: () {
                      _.validateUserInput();
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                //policy text
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Helpers.textStyle(
                      fontSize: 14,
                    ),
                    children: [
                      const TextSpan(
                        text: 'By proceeding I accept the  ',
                      ),
                      TextSpan(
                        text: 'Attayn Terms & Conditions',
                        // recognizer: TapGestureRecognizer()..onTap = _.goToTCs,
                        style: Helpers.textStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and confirm that I have read ',
                      ),
                      const TextSpan(
                        text: ' ',
                      ),
                      TextSpan(
                        text: 'Attayn Privacy Policy',
                        // recognizer: TapGestureRecognizer()..onTap = _.goToTCs,
                        style: Helpers.textStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

          // else
          //   Container(),
        ],
      ),
    );
  }
}
