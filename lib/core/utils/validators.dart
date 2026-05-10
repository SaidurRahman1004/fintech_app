class Validators {
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) return 'Phone number required';
    if (value.length < 11) return 'Invalid phone number';
    return null;
  }

  static String? validatePin(String? value) {
    if (value == null || value.length < 5) return 'PIN must be 5 digits';
    return null;
  }
}