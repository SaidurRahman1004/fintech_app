import 'package:get/get.dart';

class AuthController extends GetxController {
  var pin = "".obs;
  final int pinLength = 5;

  void onNumberPress(String number) {
    if (pin.value.length < pinLength) {
      pin.value += number;
    }
  }

  void onBackspace() {
    if (pin.value.isNotEmpty) {
      pin.value = pin.value.substring(0, pin.value.length - 1);
    }
  }

  bool get isPinValid => pin.value.length == pinLength;

  void onNext() {
    if (isPinValid) {
      // Logic for next step
      Get.snackbar("Success", "PIN Entered: ${pin.value}");
    }
  }
}
