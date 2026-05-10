import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/themes/app_theme.dart';
import 'routes/app_pages.dart';

void main() {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Here we can initialize local storage if needed later
  // await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'bKash Clone',
      debugShowCheckedModeBanner: false,

      // Setting the Initial Theme
      theme: AppTheme.lightTheme,

      // Routing Setup
      initialRoute: AppPages.INITIAL,
      // This should point to Routes.SPLASH
      getPages: AppPages.routes,

      // GetX Dependency Management (Binding can be used here for global services)
      // initialBinding: GlobalBinding(),

      // Smart Management for GetX
      smartManagement: SmartManagement.full,
    );
  }
}