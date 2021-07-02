import 'package:get/get.dart';

import '../modules/movie_details/movie_details.dart';
import '../modules/register/register.dart';
import '../modules/home/home.dart';
import '../modules/login/login.dart';

import '../routes/routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.MOVIEDETAILS,
      page: () => MovieDetailsPage(),
    ),
  ];
}
