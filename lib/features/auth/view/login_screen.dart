import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_texts.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () => Get.back(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 12, bottom: 12),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primary),
                shape: const StadiumBorder(),
              ),
              child: const Text(AppTexts.bangla, style: AppTextStyles.linkStyle),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAssets.appLogo, width: 60, height: 60),
                      const Icon(Icons.qr_code_scanner, color: AppColors.primary, size: 40),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(AppTexts.logIn, style: AppTextStyles.headingLarge),
                  const Text(AppTexts.toYourAccount, style: AppTextStyles.titleSmall),
                  const SizedBox(height: 40),
                  const Text(AppTexts.accountNumber, style: AppTextStyles.labelMedium),
                  const SizedBox(height: 5),
                  const Text(AppTexts.dummyPhoneNumber, style: AppTextStyles.bodyBold),
                  const SizedBox(height: 30),
                  const Text(AppTexts.bkashPin, style: AppTextStyles.titleMedium),
                  Obx(() => TextField(
                        readOnly: true,
                        obscureText: true,
                        obscuringCharacter: '●',
                        decoration: InputDecoration(
                          hintText: controller.pin.value.isEmpty ? AppTexts.enterBkashPin : controller.pin.value.replaceAll(RegExp(r'.'), '●'),
                          hintStyle: AppTextStyles.bodyRegular.copyWith(color: AppColors.textHint),
                          suffixIcon: const Icon(Icons.fingerprint, color: AppColors.primary, size: 35),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.dividerColor)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primary)),
                        ),
                      )),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text(AppTexts.forgotPin, style: AppTextStyles.linkStyle),
                  ),
                ],
              ),
            ),
          ),
          _buildKeypadArea(),
        ],
      ),
    );
  }

  Widget _buildKeypadArea() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(() => GestureDetector(
              onTap: controller.isPinValid ? controller.onNext : null,
              child: Container(
                width: double.infinity,
                height: 50,
                color: controller.isPinValid ? AppColors.primary : AppColors.buttonDisabled,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(AppTexts.next, style: AppTextStyles.buttonText),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: AppColors.white),
                  ],
                ),
              ),
            )),
        Container(
          color: AppColors.scaffoldBG,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              _buildKeypadRow(['1', '2', '3']),
              _buildKeypadRow(['4', '5', '6']),
              _buildKeypadRow(['7', '8', '9']),
              _buildKeypadRow(['back', '0', 'enter']),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildKeypadRow(List<String> keys) {
    return Row(
      children: keys.map((key) => Expanded(child: _buildKeypadButton(key))).toList(),
    );
  }

  Widget _buildKeypadButton(String key) {
    Widget content;
    if (key == 'back') {
      content = const Icon(Icons.backspace_outlined, color: AppColors.textGrey);
    } else if (key == 'enter') {
      content = const Icon(Icons.keyboard_return, color: AppColors.textGrey);
    } else {
      content = Text(key, style: AppTextStyles.keypadStyle);
    }

    return InkWell(
      onTap: () {
        if (key == 'back') {
          controller.onBackspace();
        } else if (key == 'enter') {
          controller.onNext();
        } else {
          controller.onNumberPress(key);
        }
      },
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: content,
      ),
    );
  }
}
