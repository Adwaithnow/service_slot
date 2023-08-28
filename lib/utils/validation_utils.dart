part of utils;

class ValidationUtils {
  static String? phoneNumberValidation(String? value) {
    // Check if this field is empty
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (value.length < 10 || value.length > 10) {
      return "Please enter a valid number";
    }
    // the password is valid
    return null;
  }

  static String? emailValidation(String? value) {
    // Check if this field is empty
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    // using regular expression
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return "Please enter a valid email address";
    }

    // the email is valid
    return null;
  }

  static String? fullNameValidation(String? name) {
    // Check if this field is empty
    if (name == null || name.trim().isEmpty) {
      return 'This field is required';
    }
    // Check if name contains any invalid characters
    if (!RegExp(r"^[a-zA-Z\u00C0-\u017F\s\-']+$").hasMatch(name)) {
      return 'Name can only contain letters, spaces, hyphens, and apostrophes.';
    }

    // Check if name is too short
    if (name.length < 4) {
      return 'Name should be at least 4 characters long.';
    }

    // Check for unallowed consecutive special characters
    if (RegExp(r"['\-]{2,}").hasMatch(name)) {
      return 'Consecutive hyphens, spaces, or apostrophes are not allowed.';
    }

    // If all validations pass
    return null; // No error
  }

  static String? addressValidation(String? address) {
    // Check if this field is empty
    if (address == null || address.trim().isEmpty) {
      return 'This field is required';
    }
    // Check if address contains any obviously invalid characters
    if (!RegExp(r"^[a-zA-Z0-9\u00C0-\u017F\s\-',./]+$").hasMatch(address)) {
      return 'Address contains invalid characters.';
    }

    // Check if address is too short
    if (address.length < 5) {
      return 'Address seems too short.';
    }

    // Check if address is too long
    if (address.length > 255) {
      return 'Address seems too long.';
    }

    // Check for unallowed consecutive special characters
    if (RegExp(r"[',./\-]{2,}").hasMatch(address)) {
      return 'Consecutive special characters are not allowed in address.';
    }

    // If all validations pass
    return null; // No error
  }

  static String? pincodeValidation(String? pincode) {
    // Check if this field is empty
    if (pincode == null || pincode.trim().isEmpty) {
      return 'This field is required';
    }
    // Check if PIN contains anything other than 6 digits
    if (!RegExp(r'^\d{6}$').hasMatch(pincode)) {
      return 'PIN code should be exactly 6 digits.';
    }

    // Check if PIN starts with '0' (optional check based on requirements)
    if (pincode.startsWith('0')) {
      return 'PIN code seems invalid.';
    }

    // If all validations pass
    return null; // No error
  }

  static String? remarkValidation(String? remark) {
    // Check if this field is null
    if (remark == null) {
      return null;
    }
    if (remark.length > 250) {
      return 'remark exceed 250 character limit';
    }
    // the password is valid
    return null;
  }

  static String? passwordValidation(String? value) {
    // Check if this field is empty
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }

    // check length of password
    if (value.length < 8) {
      return "Password must be atleast 8 character";
    }

    // the password is valid
    return null;
  }

  static String? confirmPasswordValidation(String? value, String confirm) {
    // Check if this field is empty
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }

    // check length of password

    if (value.length < 8) {
      return "Password must be atleast 8 character";
    }

    //check confirm password and password same
    if (confirm != value) {
      return "Password and confirm password must be same";
    }
    // the password is valid
    return null;
  }
}
