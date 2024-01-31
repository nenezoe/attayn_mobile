import 'dart:convert';

extension WeBe on String {
  String? verifyPassword({
    int minLength = 6,
  }) {
    if (length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    // final passedCriteria = contains(
    //   RegExp('^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{$minLength,}\$'),
    // );
    //
    // if (!passedCriteria) {
    //   return 'Password must contain at least one letter and one number';
    // }
    return null;
  }

  String truncate([int maxChars = 25]) {
    return length > maxChars ? '${substring(0, maxChars)}...' : this;
  }

  String? get enc {
    try {
      return base64Url.encode(utf8.encode(this));
    } catch (e) {
      return null;
    }
  }

  String? get dec {
    try {
      return utf8.decode(base64Url.decode(this));
    } catch (e) {
      return null;
    }
  }
}
