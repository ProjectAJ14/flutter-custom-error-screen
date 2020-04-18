import 'package:flutter_custom_error_screen/utils/strings.dart';

class FieldValidator {
  static String validateEmail(String value) {
    print("validateEmail : $value ");

    if (value.isEmpty) return Strings.enterEmail;

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value.trim())) {
      return Strings.enterValidEmail;
    }

    return null;
  }

  /// Password matching expression. Password must be at least 4 characters,
  /// no more than 8 characters, and must include at least one upper case letter,
  /// one lower case letter, and one numeric digit.
  static String validatePassword(String value) {
    print("validatePassword : $value ");

    if (value.isEmpty) return Strings.enterPassword;

    Pattern pattern = r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$';

    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value.trim())) {
      return Strings.enterValidPassword;
    }

    return null;
  }
}
