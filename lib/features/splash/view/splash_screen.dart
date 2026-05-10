import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_assets.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SvgPicture.asset(
          AppAssets.logo,
          width: 150,
          height: 150,
          placeholderBuilder: (BuildContext context) => const CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
