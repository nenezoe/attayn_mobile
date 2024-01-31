import 'package:attayn_mobile/auth/authentication/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/assets.dart';
import '../../../screen/splash/splash_controller.dart';
import '../../../utils/helpers.dart';
import '../../../widgets/attayn_button.dart';
import '../../../widgets/attayn_text_field.dart';

class LogInView extends StatelessWidget {
  LogInView({Key? key}) : super(key: key);

  final _ = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 40, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(
                  height: 10,
                ),

                InkWell(
                  onTap: () {
                    Get.find<SplashController>().gotoForgotPassword();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: Helpers.textStyle(
                        fontSize: 16,
                        color: const Color(0xFF454545),
                      ),
                    ),
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
                    text: 'Log In',
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
          ),
        )

        // else
        //   Container(),

        );
  }
}
