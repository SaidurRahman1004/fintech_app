import 'package:get/get.dart';
import '../features/splash/binding/splash_binding.dart';
import '../features/splash/view/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(), // LazyPut will be inside this binding
    ),
    // Add other routes as you build them
  ];
}