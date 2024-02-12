import 'package:logistics_app/core/extensions/extensions.dart';

class Validator {
  static String? password(String? value) {
    String title = "password";
    if (value == null || value.isEmpty) {
      return "$title can not be empty".capitalize();
    } else {
      // check length of string
      if (value.length <= 7) {
        // print(value.length);
        return "$title must be at least 8 chars".capitalize();
      } else {
        return null;
      }
    }
  }

  static String? email(String? email) {
    final emailReg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (email != null) {
      if (email.isEmpty) {
        return "Email address cannot be empty";
      } else if (!emailReg.hasMatch(email)) {
        return "Invalid email address";
      }
      return null;
    }
    return "Invalid email address";
  }

  static String? phone(String? phone) {
    if (phone != null) {
      if (phone.isEmpty) {
        return "Phone number cannot be empty";
      } else if (phone.length < 9) {
        return "Invalid phone number";
      }
      return null;
    }
    return "Invalid phone number";
  }

  static String? code(String? otp) {
    if (otp != null) {
      if (otp.isEmpty) {
        return "Code cannot be empty";
      } else if (otp.length > 5) {
        return "Invalid phone number";
      }
      return null;
    }
    return "Invalid code";
  }

  static String? name(
    String? name,
  ) {
    String title = "Name";
    if (name != null) {
      if (name.isEmpty) {
        return "$title cannot be empty";
      } else if (name.length < 2) {
        return "Invalid $title";
      }
      return null;
    }
    return "Invalid $title";
  }

  static String? string(
    String? string,
    String title,
  ) {
    if (string != null) {
      if (string.isEmpty) {
        return "$title cannot be empty";
      } else if (string.length < 2) {
        return "Invalid $title";
      }
      return null;
    }
    return "Invalid $title";
  }

  // static String? singleName(String? name, [String title = "Name"]) {
  //   if (name != null) {
  //     if (name.isEmpty) {
  //       return "$title cannot be empty";
  //     } else if (name.contains(" ") || name.length < 2) {
  //       return "Invalid $title";
  //     }
  //     return null;
  //   }
  //   return "Invalid $title";
  // }

  // static String? password(String? password) {
  //   if (password != null) {
  //     if (password.isEmpty) {
  //       return "Password cannot be empty";
  //     } else if (password.length < 6) {
  //       return "Password must be more than 5 characters";
  //     } else if (!password.contains(RegExp(r'[A-Z]'))) {
  //       return "Password must contain a capital letter";
  //     } else if (!AppRegex.onlySpecialCharacter.hasMatch(password)) {
  //       return "Password must contain a special character";
  //     } else if (!password.contains(RegExp(r'[0-9]'))) {
  //       // } else if (!AppRegex.onlynumbers.hasMatch(password)) {
  //       return "Password must contain at least a number";
  //     }
  //   }
  //   return null;
  // }
}
