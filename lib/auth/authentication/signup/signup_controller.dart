import 'package:attayn_mobile/utils/extensions/string.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

import '../../../config/routes.dart';
import '../../../dialogs/app_dialogs.dart';

class SignUpController extends GetxController {
  String email = '';
  String fullname = '';
  String password = '';
  String confirmPassword = '';

  final _isTyping = false.obs;

  bool get isTyping => _isTyping.value;

  final forgotPassword = false.obs;

  void onConfirmPasswordChange(String? val) {
    confirmPassword = val!;
  }

  void onPasswordChange(String? val) {
    password = val!;

    if (val.isNotEmpty) {
      //typing, show confirm password
      _isTyping.value = true;
    } else {
      //not typing, hide confirm password
      _isTyping.value = false;
    }
  }

  void onEmailChange(String? value) {
    email = value!;
  }

  void onfullnameChange(String? value) {
    fullname = value!;
  }

  // void goToPrivacyPolicy() =>
  // Helpers.goToLinkInApp(AppConstants.privacyPolicyUrl);

  // void goToEULA() => Helpers.goToLinkInApp(AppConstants.eulaUrl);

  // void goToTCs() => Helpers.goToLinkInApp(AppConstants.termsOfServiceUrl);

  Future validateUserInput() async {
    Get.toNamed(Routes.scheduleView);
    //extract user email and password
    String _email = email.trim();
    String _password = password.trim();
    String _confirmPassword = confirmPassword.trim();
    return;

    //check empty fields
    if (_email.isEmpty || _password.isEmpty || _confirmPassword.isEmpty) {
      return AppDialogs.error('Empty fields available, please check');
    }

    //no empty fields, proceed
    //validate email
    bool emailCorrect = EmailValidator.validate(_email);
    if (!emailCorrect) {
      //password not the same
      return AppDialogs.error('Email invalid, please check');
    }

    //validate password
    final validPassword = password.verifyPassword();

    if (validPassword != null) {
      //password not the same
      return AppDialogs.error(validPassword);
    }
    //confirm passwords
    if (password != confirmPassword) {
      //password not the same
      return AppDialogs.error('Password mismatch, try again');
    }
    //all good, proceed

    //make register request
    var body = {
      'email': email,
      'password': password,
      'firstName': '',
      'lastName': ''
    };

    // final _ = Get.find<FirebaseAuthService>();

    AppDialogs.loading();

    // try {
    //   final u = await _.registerUser(body);
    //   Get.back();
    //   if (Get.isRegistered<EmbeddedAuthController>()) {
    //     Get.find<EmbeddedAuthController>().onLogin(u);
    //     return;
    //   }
    //   // Get.offAllNamed(Routes.webeStateScreen);
    // } catch (e) {
    //   Get.back();
    //   AppDialogs.error((e as WeBeException).message);
    // }
  }

  // void signUpWithGoogle() async {
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

  // void signUpWithFacebook() async {
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

  // void signUpWithApple() async {
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
