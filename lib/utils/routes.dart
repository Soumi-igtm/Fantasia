import 'package:fantasia_new/views/auth/splash.dart';
import 'package:get/get.dart';

import '../views/auth/login.dart';
import 'bindings.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: "/", page: () => const Splash(), binding: SplashBinding()),
    GetPage(name: "/login", page: () => const Login(), binding: LoginBinding()),
  ];
}
