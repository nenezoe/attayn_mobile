import 'package:attayn_mobile/screen/schedule_screen/schedule_view.dart';
import 'package:get/get.dart';

import '../screen/schedule_screen/schedule.dart';
import '../screen/splash/second_splash.dart';
import '../screen/splash/splash.dart';

class Routes {
  static final allRoutes = <GetPage>[
    // authentication,
    // forgotPassword,
    // call,
    // editProfile,
    // fullScreen,
    // invites,
    // notifications,
    // home,
    // faq,
    // privacyPolicy,
    // resources,
    // settings,

    splash,
    secondSplash,
    schedule,
  ];

  static String get initialRoute => splash.name;

  /*Routes*/
  static String get secondRoute => secondSplash.name;

  static String get scheduleView => ScheduleView.name;
  // static String get authenticationScreen => authentication.name;

  // static String get forgotPasswordScreen => forgotPassword.name;

  // static String get callScreen => call.name;

  // static String get editProfileScreen => editProfile.name;

  // static String get fullScreenScreen => fullScreen.name;

  // static String get invitesScreen => invites.name;

  // static String get notificationsScreen => notifications.name;

  // static String get homeScreen => home.name;

  // static String get faqScreen => faq.name;

  // static String get privacyPolicyScreen => privacyPolicy.name;

  // static String get resourcesScreen => resources.name;

  // static String get settingsScreen => settings.name;

  // static String get weGalleryScreen => weGallery.name;

  // static String get theWeBeWayScreen => theWeBeWay.name;

  // static String get webepointsScreen => webepoints.name;

  // static String get onBoardingScreen => onBoarding.name;

  // static String get podChatScreen => webepodChat.name;

  // static String get affinityChatScreen => affinityGroupChat.name;

  // static String get webeGroupChatScreen => webeGroupChat.name;

  // static String get podPrivacyScreen => webepodPrivacy.name;

  // static String get privateChatScreen => privateChat.name;

  // static String get seeUserProfileScreen => seeUserProfile.name;

  // static String get splashScreen => splash.name;

  // static String get webeElementsScreen => webeElements.name;

  // static String get webeStateScreen => webeState.name;

  // static String get webeWisdomScreen => webeWisdom.name;

  // static String get webepodInfoScreen => webepodInfo.name;

  //   static String get WeBeStateView => webeState.name;

  // static String get affinityGroupInfoScreen => affinityGroupInfo.name;

  // static String get webeGroupInfoScreen => webeGroupInfo.name;

  // static String get editAffinityGroupInfoScreen => editAffinityGroupInfo.name;

  // static String get editWeBeGroupInfoScreen => editWeBeGroupInfo.name;

  // static String get groupLinkScreen => groupLink.name;

  // static String get affinityPendingRequestsScreen =>
  //     affinityPendingRequests.name;

  // static String get webeGroupPendingRequestsScreen =>
  //     webeGroupPendingRequests.name;

  // static String get enhancedPartnerAffinityGroupIndexScreen =>
  //     enhancedPartnerAffinityGroupIndex.name;

  // static String get enhancedPartnerAffinityGroupInfoScreen =>
  //     enhancedPartnerAffinityGroupInfo.name;

  // static String get enhancedPartnerAffinityGroupPendingRequestsScreen =>
  //     enhancedPartnerAffinityPendingRequests.name;

  // static String get affiliatedPartnerAffinityGroupChatScreen =>
  //     affiliatedPartnerAffinityGroupChat.name;

  // static String get affiliatedPartnerAffinityGroupInfoScreen =>
  //     affiliatedPartnerAffinityGroupInfo.name;

  // static String get editAffiliatedPartnerAffinityGroupInfoScreen =>
  //     editAffiliatedPartnerAffinityGroupInfo.name;

  // static String get affiliatedPartnerAffinityGroupPendingRequestsScreen =>
  //     affiliatedPartnerAffinityPendingRequests.name;
}
