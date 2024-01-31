
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class AttaynException implements Exception {
  @pragma('vm:entry-point')
  const AttaynException([this.message = defaultMessage]);

  // factory AttaynException.fromAuthException(FirebaseAuthException e) {
  //   String msg = defaultMessage;

  //   switch (e.code) {
  //     case 'invalid-email':
  //     case 'auth/invalid-email':
  //       msg = 'Email address is not valid';
  //       break;

  //     case 'user-disabled':
  //       msg = 'User has been disabled';
  //       break;

  //     case 'account-exists-with-different-credential':
  //       msg = 'Email already used with different sign-in provider';
  //       break;

  //     case 'user-not-found':
  //       msg = 'No account match';
  //       break;

  //     case 'email-already-in-use':
  //       msg = 'Email already in use';
  //       break;

  //     case 'weak-password':
  //       msg = 'Weak password. Try again';
  //       break;
  //     case 'requires-recent-login':
  //       msg = 'You need to re-sign in to update account';
  //       break;

  //     case 'network-request-failed':
  //       msg = 'Check your internet connection';
  //       break;

  //     case 'wrong-password':
  //       msg = 'Invalid password';
  //       break;
  //   }

  //   return AttaynException(msg);
  // }

  factory AttaynException.fromPlatformException(PlatformException e) {
    String msg = defaultMessage;

    switch (e.code) {
      case 'sign_in_canceled':
        msg = 'Sign-in cancelled';
        break;

      case 'network_error':
        msg = 'Check your internet connection';
        break;

      case 'sign_in_failed':
        msg = 'Sign-in failed';
        break;

      default:
        msg = e.message ?? defaultMessage;
        break;
    }

    return AttaynException(msg);
  }

  // factory AttaynException.fromFirebaseException(FirebaseException e) {
  //   String msg = defaultMessage;

  //   switch (e.code) {
  //     case 'storage/canceled':
  //       msg = 'Upload cancelled';
  //       break;

  //     case 'storage/cannot-slice-blob':
  //       msg = 'File not found';
  //       break;

  //     case 'storage/server-file-wrong-size':
  //       msg = 'Try again';
  //       break;

  //     case 'storage/quota-exceeded':
  //       msg = 'Try again later';
  //       break;

  //     case 'storage/unauthorized':
  //     case 'storage/unauthenticated':
  //       msg = 'User unauthenticated';
  //       break;

  //     default:
  //       msg = e.message ?? defaultMessage;
  //       break;
  //   }

  //   return AttaynException(msg);
  // }

  final String message;

  @override
  String toString() {
    return message;
  }

  factory AttaynException.fromDioException(DioError e) {
    String msg = defaultMessage;

    msg = e.response?.data['message'] ?? e.message;

    return AttaynException(msg);
  }

  static const String defaultMessage = 'Unknown Error ⚠';
}
