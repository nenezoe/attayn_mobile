import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './forgot_password_controller.dart';
import '../../../config/assets.dart';
import '../../../widgets/attayn_button.dart';
import '../../../widgets/attayn_text_field.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key? key}) : super(key: key);

  final _ = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 0),
          child: !_.confirmPassword.value
              ? Column(
                  children: [
                    const SizedBox(
                      height: 27,
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
                      height: 20,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "Enter your email address, we'll send you a password reset link",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 146,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: AttaynButton(
                        width: double.infinity,
                        text: 'Send',
                        onTap: () {
                          _.gotoConfirmPassword();
                          // _.validateUserInput();
                        },
                      ),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: AttaynTextField(
                          // label: 'Password',
                          hintText: 'New Password',
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
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: AttaynTextField(
                          // label: 'Password',
                          hintText: 'Confirm Password',
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
                      SizedBox(
                        height: 176,
                      ),
                      AttaynButton(
                        width: double.infinity,
                        text: 'Confirm',
                        onTap: () {
                          _.gotoConfirmPassword();
                          // _.validateUserInput();
                        },
                      ),
                    ],
                  ),
                )),
    );
  }
}
