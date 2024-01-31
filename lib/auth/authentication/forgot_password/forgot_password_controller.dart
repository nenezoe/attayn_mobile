import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

import '../../../dialogs/app_dialogs.dart';

class ForgotPasswordController extends GetxController {
  String email = '';
  String password = '';

  final forgotPassword = false.obs;

  final confirmPassword = false.obs;

  void onPasswordChange(String? val) {
    password = val!;
  }

  void onEmailChange(String? value) {
    email = value!;
  }

  gotoConfirmPassword() {
    confirmPassword.value = true;
  }

  void validateUserInput() async {
    //extract user email and password
    String _email = email.trim();
    String _password = password.trim();

    //check empty fields
    if (_email.isEmpty || _password.isEmpty) {
      AppDialogs.error('Empty fields available, please check');
      return;
    }
    if (_password.length < 6) {
      AppDialogs.error('Password should be up to 6 characters long');
      return;
    }

    //no empty fields, proceed
    //validate email
    bool emailCorrect = EmailValidator.validate(_email);

    //validate password
    //bool passwordCorrect = validatePassword(password);

    if (!emailCorrect) {
      AppDialogs.error('Invalid email address');
      return;
    }

    //make register request
    var body = {
      'email': _email,
      'password': _password,
    };

    // final _ = Get.find<FirebaseAuthService>();

    AppDialogs.loading();

    // try {
    //   final u = await _.loginUser(body);
    //   Get.back();
    //   if (Get.isRegistered<EmbeddedAuthController>()) {
    //     Get.find<EmbeddedAuthController>().onLogin(u);
    //     return;
    //   }
    //   Get.offAllNamed(Routes.webeStateScreen);
    // } catch (e) {
    //   Get.back();
    //   AppDialogs.error((e as AttaynException).message);
    // }
  }

  // void toSignUpScreen() {
  //   Get.toNamed(Routes.authenticationScreen);
  // }

  // void toForgotPasswordScreen() {
  //   Get.toNamed(Routes.forgotPasswordScreen);
  // }

  // void loginWithGoogle() async {
  //   try {
  //     final u = await Get.find<FirebaseAuthService>().googleLogin();
  //     if (Get.isRegistered<EmbeddedAuthController>()) {
  //       Get.find<EmbeddedAuthController>().onLogin(u);
  //       return;
  //     }
  //     Get.offAllNamed(Routes.webeStateScreen);
  //   } catch (e) {
  //     AppDialogs.error((e as WeBeException).message);
  //   }
  // }

  // void loginWithFacebook() async {
  //   try {
  //     final u = await Get.find<FirebaseAuthService>().facebookLogin();
  //     if (Get.isRegistered<EmbeddedAuthController>()) {
  //       Get.find<EmbeddedAuthController>().onLogin(u);
  //       return;
  //     }
  //     Get.offAllNamed(Routes.webeStateScreen);
  //   } catch (e) {
  //     AppDialogs.error((e as WeBeException).message);
  //   }
  // }

  // void loginWithApple() async {
  //   try {
  //     final u = await Get.find<FirebaseAuthService>().appleLogin();
  //     if (Get.isRegistered<EmbeddedAuthController>()) {
  //       Get.find<EmbeddedAuthController>().onLogin(u);
  //       return;
  //     }
  //     Get.offAllNamed(Routes.webeStateScreen);
  //   } catch (e) {
  //     AppDialogs.error((e as WeBeException).message);
  //   }
  // }
}
